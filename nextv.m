function vnext = nextv(vi, vprev, rhonext, rhoi, VSL)
global ALPHA Vf A RHOc T TAU L K MU 
Vi = min([(1+ALPHA)*VSL; Vf*exp((-1/A)*(rhoi/RHOc)^A)]);
posterm = vi + (T/TAU)*(Vi - vi) + (T/L)*vi*(vprev - vi);
negterm = ((MU * T * (rhonext - rhoi))/(TAU * L * (rhoi + K)));
vnext = posterm - negterm;
end