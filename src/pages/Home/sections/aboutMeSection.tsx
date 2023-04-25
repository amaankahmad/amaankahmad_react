import React from "react";
import StPaulsLogo from "../../../assets/stpauls.png";
import ImperialLogo from "../../../assets/icl.png";
import RAEngLogo from "../../../assets/raeng.png";
import EFLogo from "../../../assets/ef.png";
import { useNavigate } from "react-router-dom";

const AboutMeSection = () => {
  const navigate = useNavigate();

  const scrollTo = (id: string) => {
    const element = document.getElementById(id) as HTMLDivElement;
    element.scrollIntoView({
      behavior: "smooth",
    });
  };
  return (
    <section className="mt-[6%] text-center text-white">
      <div className="px-[20%]" id="about-me-section">
        <h1 className="text-8xl font-normal mb-20 underline">about me</h1>
        <p className="text-2xl">
          i love building! it's very core to who i am and there's no greater
          fulfillment to me than seeing someone use something i've built :)
        </p>
        <p className="text-2xl mt-12">
          i would love to see myself as a{" "}
          <span className="underline">humanitarian engineer</span>: someone who
          can leverage technology to create a positive impact. this led me to
          study my niche degree: computational biomedical engineering, and to
          founding{" "}
          <a
            href="https://www.thepathfinderproject.co.uk/"
            target="_blank"
            rel="noopener noreferrer"
            className="underline"
            style={{ color: "#BFA98F" }}
          >
            pathfinder
          </a>
          .
        </p>
        <button
          className="px-8 py-4 mt-20 text-black rounded-full text-lg font-semibold"
          style={{ backgroundColor: "#BFA98F" }}
          onClick={() => navigate("/builds")}
        >
          curious to see what i've built?
        </button>
      </div>
      <div className="md:mt-[6%]">
        <div className="bg-[#E7DFD5] w-screen h-40 md:h-48">
          <div className="md:text-lg py-8 text-center text-black font-bold tracking-tight leading-none">
            thank you to those who invested in me
          </div>
          {/* Work on turning this into grid format */}
          <div className="flex items-center justify-center md:gap-36 space-x-3 md:space-x-0">
            <img
              alt="st pauls logo"
              src={StPaulsLogo}
              className="h-[20px] md:h-20 lg:h-12"
            />
            <img
              alt="imperial college london logo"
              src={ImperialLogo}
              className="h-[20px] md:h-20 lg:h-12"
            />
            <img
              alt="royal academy of engineering logo"
              src={RAEngLogo}
              className="h-[20px] md:h-20 lg:h-12"
            />
            <img
              alt="entrepreneur first logo"
              src={EFLogo}
              className="h-[20px] md:h-20 lg:h-12"
            />
          </div>
        </div>
      </div>
    </section>
  );
};

export default AboutMeSection;
