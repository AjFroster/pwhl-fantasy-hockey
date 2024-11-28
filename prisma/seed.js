const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

// const players = require('./player_seed_data.json'); // Use require() for consistency

async function main() {
    // Seeding Player Database
    // for (const player of players) {
    //     await prisma.player.create({
    //         data: player
    //     });
    // }

    // Seeding PlayerGameStats
    const players = await prisma.player.findMany();

    console.log(`Found ${players.length} players. Seeding their stats...`);
  
    // Create PlayerGameStats for each player with default stats
    for (const player of players) {
      await prisma.playerGameStats.create({
        data: {
          playerId: player.id,
          gameId: 1, // You can replace this with actual gameId logic or seed a game first
          goals: 0,
          assists: 0,
          saves: 0,
          hits: 0,
          plusMinus: 0,
          shots: 0,
        },
      });
      console.log(`Seeded stats for player: ${player.name}`);
    }
  
    console.log('Seeding complete!');
}

main().catch(e=>{
    console.error(e);
    process.exit(1);
}).finally(async()=>{
    await prisma.$disconnect();
})