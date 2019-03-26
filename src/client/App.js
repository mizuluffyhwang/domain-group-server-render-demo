import React from 'react';
import styled from 'styled-components';

// Our single Styled Component definition
const AppContainer = styled.div`
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  position: fixed;
  width: 100%;
  height: 100%;
  
  padding-right: 50px;
  background: linear-gradient(20deg, rgb(219, 112, 147), #daa357);
`;

const Header = styled.div`
  font-size: 40px;
  margin-bottom: 100px;
`;

const App = () => <AppContainer>
  <Header>Server Side Render App  💅 Demo</Header>
  <img 
    src="https://s3-ap-southeast-2.amazonaws.com/workshop-wendy-wang/images/house2.jpeg" 
    width="800"
    alt="House"
  />
 </AppContainer>;

export default App;