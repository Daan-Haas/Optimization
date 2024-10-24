function [qi, rhonext] = nextrho(rhoi, qprev, qr, vi)
global LAMBDA T L;
qi = LAMBDA*rhoi*vi;
rhonext = rhoi + (T/(LAMBDA*L))*(qprev - qi + qr);
end            