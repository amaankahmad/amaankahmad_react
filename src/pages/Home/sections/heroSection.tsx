import React from "react";
import RightContentBlock from "../../../components/common/ContentBlock/RightContentBlock";
import Me from "../../../assets/me.png";

const HeroSection = () => {
  return (
    <RightContentBlock imageSrc={Me} title="building towards a future of ">
      <p className="text-2xl leading-relaxed mt-4">
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
