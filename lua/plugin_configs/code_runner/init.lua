local present, code_runner = pcall(require, 'code_runner')

if present then
  code_runner.setup({
    -- put here the commands by filetype
    filetype = {
      java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
      python = "python3 -u",
      typescript = "deno run",
      rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
      cpp = "clang++ $dir/$fileName -o out/$fileNameWithoutExt && ./out/$fileNameWithoutExt"
    },
    startinsert = true,
  })
end
