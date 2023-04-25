import React from "react";
import LeftContentBlock from "../../../components/common/ContentBlock/LeftContentBlock";
import Path from "../../../assets/path.png";
import { useNavigate } from "react-router-dom";

const PathFinderSection = () => {
  const navigate = useNavigate();
  return (
    <div id="pathfinder-section">
      <LeftContentBlock imageSrc={Path} title="pathfinder">
        <p className="sm:text-xl md:text-2xl xl:ml-16 leading-relaxed">
          i'm a builder at heart. currently, i'm building{" "}
          <a
            href="https://www.thepathfinderproject.co.uk/"
            target="_blank"
            rel="noopener noreferrer"
            className="underline"
            style={{ color: "#BFA98F" }}
          >
            pathfinder
          </a>
          . it's what i like to call the{" "}
          <span className="underline">education system for the internet</span>.
          <br />
          <br />
          the{" "}
          <span className="text-xl sm:text-2xl md:text-3xl font-black">
            big vision
          </span>{" "}
          is to build a tool that allows someone to get a university-level
          education <span className="underline">completely for free</span> from
          the comfort of their own home.
          <br />
          <br />
          currently, we curate online learning paths for you to find your career
          fit in tech. we live in a world where content is a commodity. and so
          we provide you with the curriculum and point you to free online
          resources. we work with employers to develop these curriculums and
          help you get hired once you're done!
        </p>
        <div className="flex justify-center xl:mt-12 2xl:mt-20 my-12 md:pr-8 xs:mb-8">
          <button
            className="px-8 py-4 text-black rounded-full sm:text-lg font-semibold"
            style={{ backgroundColor: "#BFA98F" }}
          >
            <a className="text-black" href="https://thepathfinderproject.co.uk">
              start learning now
            </a>
          </button>
        </div>
      </LeftContentBlock>
    </div>
  );
};

export default PathFinderSection;
