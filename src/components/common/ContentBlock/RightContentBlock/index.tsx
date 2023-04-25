import React from "react";

const RightContentBlock = ({ imageSrc, title, children }) => {
  return (
    <section className="relative flex flex-wrap items-center mt-[6%]">
      <div className="w-full flex items-center justify-center md:w-1/2">
        <img src={imageSrc} alt="Content Image" />
      </div>
      <div className="w-full md:w-1/2 px-4 md:pr-32">
        <h1 className="text-4xl md:text-8xl mb-16 md:mr-16 leading-loose underline">
          {title}
        </h1>
        {children}
      </div>
    </section>
  );
};

export default RightContentBlock;
