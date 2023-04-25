import React from "react";
import RightContentBlock from "../../../components/common/ContentBlock/RightContentBlock";
import Podcast from "../../../assets/podcast.png";
import { useNavigate } from "react-router-dom";

const PodcastSection = () => {
  const navigate = useNavigate();
  return (
    <div id="podcast-section">
      <RightContentBlock imageSrc={Podcast} title="podcast">
        <p className="text-2xl leading-relaxed">
          through being an “engineering leaders scholar” with the royal academy
          of engineering, i've met so many incredible engineers that are really
          making an impact! their impact spans across climate, healthcare,
          education, and so much more!
          <br />
          <br />
          my cohost,{" "}
          <a
            href="https://www.linkedin.com/in/mjkozarzewski/"
            target="_blank"
            rel="noopener noreferrer"
            className="underline"
            style={{ color: "#BFA98F" }}
          >
            maks kozarzewski
          </a>
          , and i wanted to share the conversations we were having with them,
          with the world! our podcast with the royal academy aims to open
          people's minds up to what engineers can do to make an impact and the
          unconventional journeys behind it.
        </p>
        <div className="flex justify-center mt-12">
          <button
            className="px-8 py-4 text-black rounded-full text-lg font-semibold"
            style={{ backgroundColor: "#BFA98F" }}
            onClick={() => navigate("/coming-soon")}
          >
            have a listen
          </button>
        </div>
      </RightContentBlock>
    </div>
  );
};

export default PodcastSection;
