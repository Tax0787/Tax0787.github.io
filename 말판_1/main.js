function delay(ms) {
  return new Promise((r) => setTimeout(r, ms));
}

function go(pn, rn) {
  let p = document.querySelector("#p" + pn);
  let rnlt = document.querySelector("#rn" + rn);
  let rnl = window.getComputedStyle(rnlt).getPropertyValue("left");
  let rnt = window.getComputedStyle(rnlt).getPropertyValue("top");
  p.style.left = rnl;
  p.style.top = rnt;
}

let pc = 1;
let gc1 = 0;
let gc2 = 0;
let tc1 = 0;
let tc2 = 0;

async function move() {
  let dice = document.querySelector("#dice");
  let n;
  dice.style.display = "inline-block";
  for (let i = 0; i < 100; i++) {
    n = Math.floor(Math.random() * 6) + 1;
    dice.textContent = n;
    await delay(10);
  }
  await delay(1000);
  dice.style.display = "none";
  for (let i = 0; i < n; i++) {
    if (pc == 1) {
      if (gc1 == 15) {
        gc1 = 0;
        tc1++;
      } else {
        gc1++;
      }
      go(pc, gc1);
      await delay(100);
    } else {
      if (gc2 == 15) {
        gc2 = 0;
        tc2++;
      } else {
        gc2++;
      }
      go(pc, gc2);
      await delay(100);
    }
  }
  if (pc == 1) {
    pc = 2;
    document.querySelector("#pc").textContent = "플레이어 2";
    document.querySelector("#pt1").textContent = tc1 + "턴";
  } else {
    pc = 1;
    document.querySelector("#pc").textContent = "플레이어 1";
    document.querySelector("#pt2").textContent = tc2 + "턴";
  }
}
