import React from "react";

import Books from "../../../assets/books.png";
import LeftContentBlock from "../../../components/common/ContentBlock/LeftContentBlock";
import { useNavigate } from "react-router-dom";

const WritingSection = () => {
  const navigate = useNavigate();
  return (
    <div id="writing-section">
      <LeftContentBlock imageSrc={Books} title="writing">
        <p className="sm:text-xl md:text-2xl xl:ml-16 leading-relaxed">
          as you can probably see from my (very colour coded) library, i love to
          read across a range of things! <br />
          <br />i find it useful to write up notes from interesting things ive
          read or just conversations / thoughts ive had so that i can revisit
          them.
        </p>
        <div className="flex justify-center my-12 md:pr-8">
          <button
            className="px-8 py-4 text-black rounded-full sm:text-lg font-semibold"
            style={{ backgroundColor: "#BFA98F" }}
            onClick={() => navigate("/coming-soon")}
          >
            have a read
          </button>
        </div>
      </LeftContentBlock>
    </div>
  );
};

export default WritingSection;
