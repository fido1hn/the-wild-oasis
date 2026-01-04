import Heading from "../ui/Heading";
import Row from "../ui/Row";

function Cabins() {
  return (
    <Row type="horizontal">
      <Heading as="h1">All cabins</Heading>
      <p>TEST</p>
      <img
        src="http://127.0.0.1:54321/storage/v1/object/public/cabin-images/cabin-001.jpg"
        alt=""
        srcset=""
      />
    </Row>
  );
}

export default Cabins;
