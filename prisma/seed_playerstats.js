import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {
  // Fetch all players from the Player table
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

main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
