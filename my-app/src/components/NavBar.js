import { Link } from "react-router-dom";
import { motion } from "framer-motion";

const NavBar = () => {
  return (
    <nav>
      <ul>
        <motion.li whileHover={{ scale: 1.05 }} whileTap={{ scale: 0.95 }}>
          <Link to="/">Home</Link>
        </motion.li>
        <motion.li
          className="navbar-logo-item"
          whileHover={{ scale: 1.05 }}
          whileTap={{ scale: 0.95 }}
        >
          <Link to="/">
            <img
              src="/favicon.ico"
              alt="Muscle Minder Logo"
              className="navbar-logo"
            />
          </Link>
        </motion.li>
        <motion.li whileHover={{ scale: 1.05 }} whileTap={{ scale: 0.95 }}>
          <Link to="/about">About</Link>
        </motion.li>
      </ul>
    </nav>
  );
};

export default NavBar;
