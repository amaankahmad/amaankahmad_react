import React from "react";
import LinkedIn from "../../assets/icons/LinkedIn.png";
import Twitter from "../../assets/icons/Twitter.png";
import Mail from "../../assets/icons/Mail.png";

const Footer = () => {
  return (
    <footer
      className="relative flex flex-wrap items-center mt-[6%] py-[4%]"
      style={{ backgroundColor: "#E7DFD5" }}
    >
      <div className="w-full md:w-2/3 px-4 md:pl-16" id="contact-section">
        <h2
          className="text-4xl md:text-8xl mb-16 md:pl-16 leading-loose underline"
          style={{ color: "#121113" }}
        >
          contact
        </h2>
        <p className="text-2xl md:pl-16" style={{ color: "#121113" }}>
          feel free to contact me using any of the socials on the right! i’m
          particularly interested in talking to people education, healthcare,
          ai, bci + looking into the history of movements.
        </p>
      </div>
      <div
        className="w-full md:w-1/3 px-4 md:pl-16 md:h-[50px] flex items-end md:border-t-0"
        style={{ borderColor: "#121113" }}
      >
        <ul className="flex flex-col justify-center h-full text-[#121113]">
          <li className="mb-4">
            <a
              href="https://www.linkedin.com/in/amaankahmad"
              target="_blank"
              rel="noopener noreferrer"
              className="flex items-center text-2xl"
              style={{ color: "#121113" }}
            >
              <img src={LinkedIn} alt="linkedin" className="h-8 w-8 mr-4" />{" "}
              linkedin.com/in/amaankahmad
            </a>
          </li>
          <li className="mb-4">
            <a
              href="https://twitter.com/amaankahmad"
              target="_blank"
              rel="noopener noreferrer"
              className="flex items-center text-2xl"
              style={{ color: "#121113" }}
            >
              <img src={Twitter} alt="twitter" className="h-8 w-8 mr-4" />{" "}
              twitter.com/amaankahmad
            </a>
          </li>
          <li>
            <a
              href="mailto:amaankahmad@gmail.com"
              className="flex items-center text-2xl"
              style={{ color: "#121113" }}
            >
              <img src={Mail} alt="email" className="h-8 w-8 mr-4" />{" "}
              amaankahmad@gmail.com
            </a>
          </li>
        </ul>
      </div>
    </footer>
  );
};

export default Footer;
