function Fruits(props) {
    return (
        <p key={props.id}>{props.fruitName}</p>
    );
};

export default Fruits;