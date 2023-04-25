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
    <section className="mx-4 my-4 xl:mx-4 xl:my-8 mt-12 md:mt-20 xl:mt-32 text-center text-white">
      <div className="px-6 xl:px-[20%]" id="about-me-section">
        <h1 className="my-6 sm:my-12 text-4xl sm:text-6xl xl:text-8xl font-normal xl:mb-16 2xl:mb-20 underline">
          about me
        </h1>
        <p className="sm:text-xl xl:text-2xl">
          i love building! it's very core to who i am and there's no greater
          fulfillment to me than seeing someone use something i've built :)
          <br /> <br />i would love to see myself as a{" "}
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
          className="px-8 py-4 my-12 xl:mt-20 text-black rounded-full sm:text-lg font-semibold"
          style={{ backgroundColor: "#BFA98F" }}
          onClick={() => navigate("/builds")}
        >
          curious to see what i've built?
        </button>
      </div>
      <div className="mt-4 md:mb-16 xl:my-12 xl:mb-24 2xl:mt-[6%]">
        <div className="bg-[#E7DFD5] w-screen h-36 md:h-40 xl:h-48">
          <div className="md:text-lg py-8 text-center text-black font-bold tracking-tight leading-none">
            thank you to those who invested in me
          </div>
          <div className="flex items-center justify-center md:gap-24 xl:gap-36 space-x-3 sm:space-x-12 md:space-x-0">
            <img
              alt="st pauls logo"
              src={StPaulsLogo}
              className="h-[18px] sm:h-[36px] md:h-8 xl:h-12"
            />
            <img
              alt="imperial college london logo"
              src={ImperialLogo}
              className="h-[18px] sm:h-[36px] md:h-8 xl:h-12"
            />
            <img
              alt="royal academy of engineering logo"
              src={RAEngLogo}
              className="h-[18px] sm:h-[36px] md:h-8 xl:h-12"
            />
            <img
              alt="entrepreneur first logo"
              src={EFLogo}
              className="h-[18px] sm:h-[36px] md:h-8 xl:h-12"
            />
          </div>
        </div>
      </div>
    </section>
  );
};

export default AboutMeSection;
