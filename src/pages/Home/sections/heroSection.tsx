import React from "react";
import RightContentBlock from "../../../components/common/ContentBlock/RightContentBlock";
import Me from "../../../assets/me.png";

const HeroSection = () => {
  return (
    <RightContentBlock imageSrc={Me} title=" ">
      <h1 className="my-6 md:ml-6 sm:my-12 md:mt-4 md:mb-10 text-4xl sm:text-6xl xl:text-8xl xl:mb-16 xl:mr-16 leading-loose">
        building towards a future of{" "}
        <span className="underline">equal opportunity</span>
      </h1>
      <p className="sm:text-xl lg:text-2xl md:ml-6 leading-relaxed mt-4">
        the vision for the future i find most animating is one of{" "}
        <span className="underline">equal opportunity</span>. the biggest pillar
        of that future existing is <span className="underline">education</span>.
        it has been the biggest point of leverage in my life; from scholarships
        funding my sixth form & university education to self-teaching coding for
        free online.
      </p>
    </RightContentBlock>
  );
};

export default HeroSection;
