"use client";

import React from "react";

const Dashboard = () => {
  return (
    <div className="min-h-screen flex">
      {/* Sidebar */}
      <aside className="w-64 bg-gray-800 text-white p-4 space-y-4">
        <h2 className="text-2xl font-bold">Dashboard</h2>
        <nav>
          <ul className="space-y-2">
            <li>
              <a
                href="/dashboard/leagues"
                className="block p-2 rounded hover:bg-gray-700"
              >
                Leagues
              </a>
            </li>
            <li>
              <a
                href="/dashboard/teams"
                className="block p-2 rounded hover:bg-gray-700"
              >
                Teams
              </a>
            </li>
            <li>
              <a
                href="/dashboard/profile"
                className="block p-2 rounded hover:bg-gray-700"
              >
                Profile
              </a>
            </li>
          </ul>
        </nav>
      </aside>

      {/* Main Content */}
      <main className="flex-1 p-6 bg-gray-100">
        <h1 className="text-3xl font-bold mb-4">Compete Aganist Friends</h1>
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          {/* Sample cards */}
          <div className="p-4 bg-white rounded shadow">
            <h3 className="text-lg font-semibold">Card 1</h3>
            <p className="text-gray-600">Description or content goes here.</p>
          </div>
          <div className="p-4 bg-white rounded shadow">
            <h3 className="text-lg font-semibold">Card 2</h3>
            <p className="text-gray-600">Description or content goes here.</p>
          </div>
          <div className="p-4 bg-white rounded shadow">
            <h3 className="text-lg font-semibold">Card 3</h3>
            <p className="text-gray-600">Description or content goes here.</p>
          </div>
        </div>
      </main>
    </div>
  );
};

export default Dashboard;
