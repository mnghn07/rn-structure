import { View, Text } from "react-native";
import React from "react";
import { DrawWithOptions } from "@archireport/react-native-svg-draw";
import LinearGradient from "react-native-linear-gradient";

// ...

const SvgDraw = () => {
  return <DrawWithOptions linearGradient={LinearGradient} />;
};

export default SvgDraw;
