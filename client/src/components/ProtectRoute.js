import React, { useContext } from 'react';
import { Route, Redirect } from 'react-router-dom';
import { AuthContext } from '../providers/AuthProvider';


const ProtectedRoute = ({ component: Component, ...rest }) => {
    const { user } = useContext(AuthContext)
    return (
        <Route
         {...rest}
         render={
             (props) => user ? 
                (<Component {...props}/>) 
                :
                (
                 <Redirect to={{
                    pathname: '/login'
                 }}/>
                )
        } />

    )
}
export default ProtectedRoute