(import-macros {: pack : key} :Juliet.macros)

(pack :natecraddock/workspaces.nvim
      {:dependencies [:Shatur/neovim-session-manager
                      :nvim-telescope/telescope.nvim]
       :keys [(key :<leader>sl ":Telescope workspaces<cr>"
                   "Load workspace session")]
       :lazy false
       :config (fn []
                 (let [workspaces (require :workspaces)]
                   (workspaces.setup {:hooks {:open_pre (fn []
                                                          (let [session-manager (require :session_manager)]
                                                            (if (not= (vim.api.nvim_buf_get_name 0)
                                                                      "")
                                                                (session-manager.save_current_session)))
                                                          true)
                                              :open [(fn [_workspace
                                                          path
                                                          _state]
                                                       (local command
                                                              (.. ":cd " path
                                                                  " | tabNext | :q | SessionManager load_current_dir_session"))
                                                       (vim.cmd command))]}})
                   ((. (require :telescope) :load_extension) :workspaces)
                   (let [dirs (workspaces.get)
                         add-workspace (lambda [name path]
                                         (if (not (accumulate [found false _ dir (ipairs dirs)]
                                                    (or found (= dir.name name))))
                                             (workspaces.add path name)))]
                     (add-workspace :config "~/.config/Juliet")
                     (if (not (accumulate [found false _ dir (ipairs dirs)]
                                (or found
                                    (dir.path:match (.. ".*" :workspace ".*")))))
                         (workspaces.add_dir "~/workspace")))
                   (workspaces.sync_dirs)))})
