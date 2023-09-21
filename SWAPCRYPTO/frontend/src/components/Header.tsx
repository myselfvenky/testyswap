import { Center, VStack, Text, Heading } from "@chakra-ui/react";
import AtomicSwapLogo from "./Logo";

function Header() {
  return (
    <VStack spacing={0}>
      <Center>
        <AtomicSwapLogo boxSize="128px" />
      </Center>
      <Heading fontSize="3xl">Swap</Heading>
      <Text textAlign={"center"} fontSize="sl">
        
      </Text>
    </VStack>
  );
}

export default Header;
