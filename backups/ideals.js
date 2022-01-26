const arr = `
❌ politics 
❌ youtube
💫 save internet 
💫 torrent mr robot 
💫 learn LINUX
`.split("\n").filter(Boolean);

let toilet = process.env.DAY_NO
toilet = toilet.replaceAll("\n", "|\n");
toilet = toilet.replace("|\n", "\n");
for (const ele of arr) {
  toilet = toilet.replace("|\n", "  | " + ele + "\n");
}
toilet = toilet.replaceAll("|\n", "  |\n");
console.log(toilet);
