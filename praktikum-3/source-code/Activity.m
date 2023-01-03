% M0521003 - Adi Prasetya
function Activity(name)
  Doing(name)
  fprintf('His/her name is %s!\n', name)
endfunction

function Doing(name)
  fprintf('%s is eating\n',name)
endfunction
