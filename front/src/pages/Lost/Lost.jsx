import "./Lost.scss";
import lost from "../../assets/travolta_lost.gif";

function NotFound() {
  return (
    <main className="lost_container">
      <h2 className="lost_text">I’m lost</h2>
      <img className="lost_img" alt="travolta looking around" src={lost} />
    </main>
  );
}

export default NotFound;
