return {
    "CRAG666/code_runner.nvim",
    config = function ()
        require('code_runner').setup({
  options = {
   better_term = { -- Toggle mode replacement
    clean = false, -- Clean terminal before launch
    number = 10, -- Use nil for dynamic number and set init
    init = nil,
    }
  },

  filetype = {
    kotlin = "cd $dir && kotlinc $fileName -include-runtime -d out/$fileNameWithoutExt.jar && cd $dir/out/ && kotlin $fileNameWithoutExt.jar",
    java = {
      --"cd $dir &&",
      -- "mkdir -p out",
      "javac $fileName -d out &&",
      "java -cp $dir/out $fileNameWithoutExt"
    },
    cpp ={ 
        --"cd $dir &&",
        "mkdir -p out &&",
        "g++ $fileName -o out/$fileNameWithoutExt &&",
        "$dir/out/$fileNameWithoutExt",
    },
    python = "python3 -u",
    typescript = "deno run",
    rust = {
      "cd $dir &&",
      "rustc $fileName &&",
      "$dir/$fileNameWithoutExt"
    },

--[[
    c = function(...)
      c_base = {
        "cd $dir &&",
        "gcc $fileName -o",
        "/tmp/$fileNameWithoutExt",
      }
      local c_exec = {
        "&& /tmp/$fileNameWithoutExt &&",
        "rm /tmp/$fileNameWithoutExt",
      }
      vim.ui.input({ prompt = "Add more args:" }, function(input)
        c_base[4] = input
        vim.print(vim.tbl_extend("force", c_base, c_exec))
        require("code_runner.commands").run_from_fn(vim.list_extend(c_base, c_exec))
      end)
    end,
]]
  },
})


    end,
    keys = {
        {
      "<leader>r",
      function()
        require('code_runner.commands').run_code()
      end,
      desc = "Run code",
    },
    }
}

