import { Outlet } from "react-router";
import Sidebar from "./Sidebar";
import Header from "./Header";
import styled from "styled-components";

const StyledApplayout = styled.div`
  display: grid;
  height: 100dvh;
  grid-template-columns: 26rem 1fr;
  grid-template-rows: auto 1fr;
`;

const Main = styled.main`
  padding: 4rem 4.8rem 6.4rem;
  background-color: var(--color-grey-50);
`;

function AppLayout() {
  return (
    <StyledApplayout>
      <Sidebar />
      <Header />
      <Main>
        <Outlet />
      </Main>
    </StyledApplayout>
  );
}

export default AppLayout;
