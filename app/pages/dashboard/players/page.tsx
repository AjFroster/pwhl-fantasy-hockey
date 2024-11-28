import PlayerCard from "./PlayerCard";
import { createClient } from "@/utils/supabase/server";
import { cookies } from "next/headers";

const Page = async () => {
  const cookieStore = cookies();
  const supabase = createClient(cookieStore);

  // Fetch Player data dynamically
  const { data: players, error } = await supabase.from("Player").select("*");

  console.log(players);

  if (error) {
    console.error("Error fetching players:", error.message);
    return <div>Error loading players</div>;
  }

  if (!players) {
    console.error("No players found");
    return <div>No players available</div>;
  }

  return (
    <div>
      <h1>Players</h1>
      <div style={{ display: "flex", flexWrap: "wrap", gap: "16px" }}>
        {players?.map((player) => (
          <PlayerCard key={player.id} player={player} />
        ))}
      </div>
    </div>
  );
};

export default Page;
