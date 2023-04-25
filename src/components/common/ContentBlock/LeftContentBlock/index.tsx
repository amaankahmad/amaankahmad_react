import React from "react";

const LeftContentBlock = ({ imageSrc, title, children }) => {
  return (
    <section className="relative flex flex-wrap items-center mt-[6%]">
      <div className="w-full md:w-1/2 px-4 md:pl-16">
        <h1 className="text-4xl md:text-8xl mb-16 md:ml-16 leading-loose underline">
          {title}
        </h1>
        {children}
      </div>
      <div className="w-full flex items-center justify-center md:w-1/2">
        <img src={imageSrc} alt="Content Image" />
      </div>
    </section>
  );
};

export default LeftContentBlock;
