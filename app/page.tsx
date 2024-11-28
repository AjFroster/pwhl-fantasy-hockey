"use client";

import heroImage from "@/assets/images/heroImage.png";
import { useAuth, SignedOut, SignedIn, UserButton } from "@clerk/nextjs";
import Image from "next/image";
import Link from "next/link";

const HeroPage = () => {
  const { isSignedIn } = useAuth();

  return (
    <div className="min-h-screen flex items-center justify-center bg-gray-900 text-white">
      <div className="grid grid-cols-1 md:grid-cols-2 gap-8 p-6 md:p-12">
        {/* Left Column - Text and Button */}
        <div className="flex flex-col justify-center items-center md:items-start text-center md:text-left">
          <h1 className="text-4xl md:text-6xl font-bold mb-4">
            Welcome to PWHL Fantasy Hockey
          </h1>
          <p className="text-lg md:text-2xl mb-6">
            Create your dream team, compete, and win in the ultimate fantasy
            hockey league!
          </p>

          <div>
            {isSignedIn ? (
              <Link href={isSignedIn ? "pages/dashboard" : "/sign-up"} passHref>
                <button className="px-6 py-3 bg-blue-500 hover:bg-blue-600 rounded-full text-lg font-semibold">
                  Compete
                </button>
              </Link>
            ) : (
              <SignedOut>
                <Link href="/sign-up">
                  <div>
                    <h3 className="mb-4 text-xl font-bold text-blue-500">
                      Sign in or sign up for an account
                    </h3>
                  </div>
                </Link>
              </SignedOut>
            )}
          </div>
        </div>

        {/* Right Column - Image */}
        <div className="flex justify-center items-center">
          <img
            // src={heroImage} // Replace with your image path
            alt="Fantasy Hockey"
            className="max-w-full h-auto rounded-lg shadow-lg"
          />
        </div>
      </div>
    </div>
  );
};

export default HeroPage;
