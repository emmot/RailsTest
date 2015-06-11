GIT(1)                            Git Manual                            GIT(1)



NNAAMMEE
       git - the stupid content tracker

SSYYNNOOPPSSIISS
       _g_i_t [--version] [--help] [-C <path>] [-c <name>=<value>]
           [--exec-path[=<path>]] [--html-path] [--man-path] [--info-path]
           [-p|--paginate|--no-pager] [--no-replace-objects] [--bare]
           [--git-dir=<path>] [--work-tree=<path>] [--namespace=<name>]
           <command> [<args>]


DDEESSCCRRIIPPTTIIOONN
       Git is a fast, scalable, distributed revision control system with an
       unusually rich command set that provides both high-level operations and
       full access to internals.

       See ggiittttuuttoorriiaall(7) to get started, then see EEvveerryyddaayy GGiitt[1] for a
       useful minimum set of commands. The GGiitt UUsseerr’’ss MMaannuuaall[2] has a more
       in-depth introduction.

       After you mastered the basic concepts, you can come back to this page
       to learn what commands Git offers. You can learn more about individual
       Git commands with "git help command". ggiittccllii(7) manual page gives you
       an overview of the command-line command syntax.

       Formatted and hyperlinked version of the latest Git documentation can
       be viewed at http://git-htmldocs.googlecode.com/git/git.html.

OOPPTTIIOONNSS
       --version
           Prints the Git suite version that the _g_i_t program came from.

       --help
           Prints the synopsis and a list of the most commonly used commands.
           If the option _-_-_a_l_l or _-_a is given then all available commands are
           printed. If a Git command is named this option will bring up the
           manual page for that command.

           Other options are available to control how the manual page is
           displayed. See ggiitt--hheellpp(1) for more information, because git --help
           ...  is converted internally into git help ....

       -C <path>
           Run as if git was started in _<_p_a_t_h_> instead of the current working
           directory. When multiple -C options are given, each subsequent
           non-absolute -C <path> is interpreted relative to the preceding -C
           <path>.

           This option affects options that expect path name like --git-dir
           and --work-tree in that their interpretations of the path names
           would be made relative to the working directory caused by the -C
           option. For example the following invocations are equivalent:

               git --git-dir=a.git --work-tree=b -C c status
               git --git-dir=c/a.git --work-tree=c/b status

       -c <name>=<value>
           Pass a configuration parameter to the command. The value given will
           override values from configuration files. The <name> is expected in
           the same format as listed by _g_i_t _c_o_n_f_i_g (subkeys separated by
           dots).

           Note that omitting the = in git -c foo.bar ...  is allowed and sets
           foo.bar to the boolean true value (just like [foo]bar would in a
           config file). Including the equals but with an empty value (like
           git -c foo.bar= ...) sets foo.bar to the empty string.

       --exec-path[=<path>]
           Path to wherever your core Git programs are installed. This can
           also be controlled by setting the GIT_EXEC_PATH environment
           variable. If no path is given, _g_i_t will print the current setting
           and then exit.

       --html-path
           Print the path, without trailing slash, where Git’s HTML
           documentation is installed and exit.

       --man-path
           Print the manpath (see man(1)) for the man pages for this version
           of Git and exit.

       --info-path
           Print the path where the Info files documenting this version of Git
           are installed and exit.

       -p, --paginate
           Pipe all output into _l_e_s_s (or if set, $PAGER) if standard output is
           a terminal. This overrides the pager.<cmd> configuration options
           (see the "Configuration Mechanism" section below).

       --no-pager
           Do not pipe Git output into a pager.

       --git-dir=<path>
           Set the path to the repository. This can also be controlled by
           setting the GIT_DIR environment variable. It can be an absolute
           path or relative path to current working directory.

       --work-tree=<path>
           Set the path to the working tree. It can be an absolute path or a
           path relative to the current working directory. This can also be
           controlled by setting the GIT_WORK_TREE environment variable and
           the core.worktree configuration variable (see core.worktree in ggiitt--
           ccoonnffiigg(1) for a more detailed discussion).

       --namespace=<path>
           Set the Git namespace. See ggiittnnaammeessppaacceess(7) for more details.
           Equivalent to setting the GIT_NAMESPACE environment variable.

       --bare
           Treat the repository as a bare repository. If GIT_DIR environment
           is not set, it is set to the current working directory.

       --no-replace-objects
           Do not use replacement refs to replace Git objects. See ggiitt--
           rreeppllaaccee(1) for more information.

       --literal-pathspecs
           Treat pathspecs literally (i.e. no globbing, no pathspec magic).
           This is equivalent to setting the GIT_LITERAL_PATHSPECS environment
           variable to 1.

       --glob-pathspecs
           Add "glob" magic to all pathspec. This is equivalent to setting the
           GIT_GLOB_PATHSPECS environment variable to 1. Disabling globbing on
           individual pathspecs can be done using pathspec magic ":(literal)"

       --noglob-pathspecs
           Add "literal" magic to all pathspec. This is equivalent to setting
           the GIT_NOGLOB_PATHSPECS environment variable to 1. Enabling
           globbing on individual pathspecs can be done using pathspec magic
           ":(glob)"

       --icase-pathspecs
           Add "icase" magic to all pathspec. This is equivalent to setting
           the GIT_ICASE_PATHSPECS environment variable to 1.

GGIITT CCOOMMMMAANNDDSS
       We divide Git into high level ("porcelain") commands and low level
       ("plumbing") commands.

HHIIGGHH--LLEEVVEELL CCOOMMMMAANNDDSS ((PPOORRCCEELLAAIINN))
       We separate the porcelain commands into the main commands and some
       ancillary user utilities.

   MMaaiinn ppoorrcceellaaiinn ccoommmmaannddss
       ggiitt--aadddd(1)
           Add file contents to the index.

       ggiitt--aamm(1)
           Apply a series of patches from a mailbox.

       ggiitt--aarrcchhiivvee(1)
           Create an archive of files from a named tree.

       ggiitt--bbiisseecctt(1)
           Find by binary search the change that introduced a bug.

       ggiitt--bbrraanncchh(1)
           List, create, or delete branches.

       ggiitt--bbuunnddllee(1)
           Move objects and refs by archive.

       ggiitt--cchheecckkoouutt(1)
           Checkout a branch or paths to the working tree.

       ggiitt--cchheerrrryy--ppiicckk(1)
           Apply the changes introduced by some existing commits.

       ggiitt--cciittooooll(1)
           Graphical alternative to git-commit.

       ggiitt--cclleeaann(1)
           Remove untracked files from the working tree.

       ggiitt--cclloonnee(1)
           Clone a repository into a new directory.

       ggiitt--ccoommmmiitt(1)
           Record changes to the repository.

       ggiitt--ddeessccrriibbee(1)
           Show the most recent tag that is reachable from a commit.

       ggiitt--ddiiffff(1)
           Show changes between commits, commit and working tree, etc.

       ggiitt--ffeettcchh(1)
           Download objects and refs from another repository.

       ggiitt--ffoorrmmaatt--ppaattcchh(1)
           Prepare patches for e-mail submission.

       ggiitt--ggcc(1)
           Cleanup unnecessary files and optimize the local repository.

       ggiitt--ggrreepp(1)
           Print lines matching a pattern.

       ggiitt--gguuii(1)
           A portable graphical interface to Git.

       ggiitt--iinniitt(1)
           Create an empty Git repository or reinitialize an existing one.

       ggiitt--lloogg(1)
           Show commit logs.

       ggiitt--mmeerrggee(1)
           Join two or more development histories together.

       ggiitt--mmvv(1)
           Move or rename a file, a directory, or a symlink.

       ggiitt--nnootteess(1)
           Add or inspect object notes.

       ggiitt--ppuullll(1)
           Fetch from and integrate with another repository or a local branch.

       ggiitt--ppuusshh(1)
           Update remote refs along with associated objects.

       ggiitt--rreebbaassee(1)
           Forward-port local commits to the updated upstream head.

       ggiitt--rreesseett(1)
           Reset current HEAD to the specified state.

       ggiitt--rreevveerrtt(1)
           Revert some existing commits.

       ggiitt--rrmm(1)
           Remove files from the working tree and from the index.

       ggiitt--sshhoorrttlloogg(1)
           Summarize _g_i_t _l_o_g output.

       ggiitt--sshhooww(1)
           Show various types of objects.

       ggiitt--ssttaasshh(1)
           Stash the changes in a dirty working directory away.

       ggiitt--ssttaattuuss(1)
           Show the working tree status.

       ggiitt--ssuubbmmoodduullee(1)
           Initialize, update or inspect submodules.

       ggiitt--ttaagg(1)
           Create, list, delete or verify a tag object signed with GPG.

       ggiittkk(1)
           The Git repository browser.

   AAnncciillllaarryy CCoommmmaannddss
       Manipulators:

       ggiitt--ccoonnffiigg(1)
           Get and set repository or global options.

       ggiitt--ffaasstt--eexxppoorrtt(1)
           Git data exporter.

       ggiitt--ffaasstt--iimmppoorrtt(1)
           Backend for fast Git data importers.

       ggiitt--ffiilltteerr--bbrraanncchh(1)
           Rewrite branches.

       ggiitt--mmeerrggeettooooll(1)
           Run merge conflict resolution tools to resolve merge conflicts.

       ggiitt--ppaacckk--rreeffss(1)
           Pack heads and tags for efficient repository access.

       ggiitt--pprruunnee(1)
           Prune all unreachable objects from the object database.

       ggiitt--rreefflloogg(1)
           Manage reflog information.

       ggiitt--rreelliinnkk(1)
           Hardlink common objects in local repositories.

       ggiitt--rreemmoottee(1)
           Manage set of tracked repositories.

       ggiitt--rreeppaacckk(1)
           Pack unpacked objects in a repository.

       ggiitt--rreeppllaaccee(1)
           Create, list, delete refs to replace objects.

       Interrogators:

       ggiitt--aannnnoottaattee(1)
           Annotate file lines with commit information.

       ggiitt--bbllaammee(1)
           Show what revision and author last modified each line of a file.

       ggiitt--cchheerrrryy(1)
           Find commits yet to be applied to upstream.

       ggiitt--ccoouunntt--oobbjjeeccttss(1)
           Count unpacked number of objects and their disk consumption.

       ggiitt--ddiiffffttooooll(1)
           Show changes using common diff tools.

       ggiitt--ffsscckk(1)
           Verifies the connectivity and validity of the objects in the
           database.

       ggiitt--ggeett--ttaarr--ccoommmmiitt--iidd(1)
           Extract commit ID from an archive created using git-archive.

       ggiitt--hheellpp(1)
           Display help information about Git.

       ggiitt--iinnssttaawweebb(1)
           Instantly browse your working repository in gitweb.

       ggiitt--mmeerrggee--ttrreeee(1)
           Show three-way merge without touching index.

       ggiitt--rreerreerree(1)
           Reuse recorded resolution of conflicted merges.

       ggiitt--rreevv--ppaarrssee(1)
           Pick out and massage parameters.

       ggiitt--sshhooww--bbrraanncchh(1)
           Show branches and their commits.

       ggiitt--vveerriiffyy--ccoommmmiitt(1)
           Check the GPG signature of commits.

       ggiitt--vveerriiffyy--ttaagg(1)
           Check the GPG signature of tags.

       ggiitt--wwhhaattcchhaannggeedd(1)
           Show logs with difference each commit introduces.

       ggiittwweebb(1)
           Git web interface (web frontend to Git repositories).

   IInntteerraaccttiinngg wwiitthh OOtthheerrss
       These commands are to interact with foreign SCM and with other people
       via patch over e-mail.

       ggiitt--aarrcchhiimmppoorrtt(1)
           Import an Arch repository into Git.

       ggiitt--ccvvsseexxppoorrttccoommmmiitt(1)
           Export a single commit to a CVS checkout.

       ggiitt--ccvvssiimmppoorrtt(1)
           Salvage your data out of another SCM people love to hate.

       ggiitt--ccvvsssseerrvveerr(1)
           A CVS server emulator for Git.

       ggiitt--iimmaapp--sseenndd(1)
           Send a collection of patches from stdin to an IMAP folder.

       ggiitt--pp44(1)
           Import from and submit to Perforce repositories.

       ggiitt--qquuiillttiimmppoorrtt(1)
           Applies a quilt patchset onto the current branch.

       ggiitt--rreeqquueesstt--ppuullll(1)
           Generates a summary of pending changes.

       ggiitt--sseenndd--eemmaaiill(1)
           Send a collection of patches as emails.

       ggiitt--ssvvnn(1)
           Bidirectional operation between a Subversion repository and Git.

LLOOWW--LLEEVVEELL CCOOMMMMAANNDDSS ((PPLLUUMMBBIINNGG))
       Although Git includes its own porcelain layer, its low-level commands
       are sufficient to support development of alternative porcelains.
       Developers of such porcelains might start by reading about ggiitt--uuppddaattee--
       iinnddeexx(1) and ggiitt--rreeaadd--ttrreeee(1).

       The interface (input, output, set of options and the semantics) to
       these low-level commands are meant to be a lot more stable than
       Porcelain level commands, because these commands are primarily for
       scripted use. The interface to Porcelain commands on the other hand are
       subject to change in order to improve the end user experience.

       The following description divides the low-level commands into commands
       that manipulate objects (in the repository, index, and working tree),
       commands that interrogate and compare objects, and commands that move
       objects and references between repositories.

   MMaanniippuullaattiioonn ccoommmmaannddss
       ggiitt--aappppllyy(1)
           Apply a patch to files and/or to the index.

       ggiitt--cchheecckkoouutt--iinnddeexx(1)
           Copy files from the index to the working tree.

       ggiitt--ccoommmmiitt--ttrreeee(1)
           Create a new commit object.

       ggiitt--hhaasshh--oobbjjeecctt(1)
           Compute object ID and optionally creates a blob from a file.

       ggiitt--iinnddeexx--ppaacckk(1)
           Build pack index file for an existing packed archive.

       ggiitt--mmeerrggee--ffiillee(1)
           Run a three-way file merge.

       ggiitt--mmeerrggee--iinnddeexx(1)
           Run a merge for files needing merging.

       ggiitt--mmkkttaagg(1)
           Creates a tag object.

       ggiitt--mmkkttrreeee(1)
           Build a tree-object from ls-tree formatted text.

       ggiitt--ppaacckk--oobbjjeeccttss(1)
           Create a packed archive of objects.

       ggiitt--pprruunnee--ppaacckkeedd(1)
           Remove extra objects that are already in pack files.

       ggiitt--rreeaadd--ttrreeee(1)
           Reads tree information into the index.

       ggiitt--ssyymmbboolliicc--rreeff(1)
           Read, modify and delete symbolic refs.

       ggiitt--uunnppaacckk--oobbjjeeccttss(1)
           Unpack objects from a packed archive.

       ggiitt--uuppddaattee--iinnddeexx(1)
           Register file contents in the working tree to the index.

       ggiitt--uuppddaattee--rreeff(1)
           Update the object name stored in a ref safely.

       ggiitt--wwrriittee--ttrreeee(1)
           Create a tree object from the current index.

   IInntteerrrrooggaattiioonn ccoommmmaannddss
       ggiitt--ccaatt--ffiillee(1)
           Provide content or type and size information for repository
           objects.

       ggiitt--ddiiffff--ffiilleess(1)
           Compares files in the working tree and the index.

       ggiitt--ddiiffff--iinnddeexx(1)
           Compare a tree to the working tree or index.

       ggiitt--ddiiffff--ttrreeee(1)
           Compares the content and mode of blobs found via two tree objects.

       ggiitt--ffoorr--eeaacchh--rreeff(1)
           Output information on each ref.

       ggiitt--llss--ffiilleess(1)
           Show information about files in the index and the working tree.

       ggiitt--llss--rreemmoottee(1)
           List references in a remote repository.

       ggiitt--llss--ttrreeee(1)
           List the contents of a tree object.

       ggiitt--mmeerrggee--bbaassee(1)
           Find as good common ancestors as possible for a merge.

       ggiitt--nnaammee--rreevv(1)
           Find symbolic names for given revs.

       ggiitt--ppaacckk--rreedduunnddaanntt(1)
           Find redundant pack files.

       ggiitt--rreevv--lliisstt(1)
           Lists commit objects in reverse chronological order.

       ggiitt--sshhooww--iinnddeexx(1)
           Show packed archive index.

       ggiitt--sshhooww--rreeff(1)
           List references in a local repository.

       ggiitt--uunnppaacckk--ffiillee(1)
           Creates a temporary file with a blob’s contents.

       ggiitt--vvaarr(1)
           Show a Git logical variable.

       ggiitt--vveerriiffyy--ppaacckk(1)
           Validate packed Git archive files.

       In general, the interrogate commands do not touch the files in the
       working tree.

   SSyynncchhiinngg rreeppoossiittoorriieess
       ggiitt--ddaaeemmoonn(1)
           A really simple server for Git repositories.

       ggiitt--ffeettcchh--ppaacckk(1)
           Receive missing objects from another repository.

       ggiitt--hhttttpp--bbaacckkeenndd(1)
           Server side implementation of Git over HTTP.

       ggiitt--sseenndd--ppaacckk(1)
           Push objects over Git protocol to another repository.

       ggiitt--uuppddaattee--sseerrvveerr--iinnffoo(1)
           Update auxiliary info file to help dumb servers.

       The following are helper commands used by the above; end users
       typically do not use them directly.

       ggiitt--hhttttpp--ffeettcchh(1)
           Download from a remote Git repository via HTTP.

       ggiitt--hhttttpp--ppuusshh(1)
           Push objects over HTTP/DAV to another repository.

       ggiitt--ppaarrssee--rreemmoottee(1)
           Routines to help parsing remote repository access parameters.

       ggiitt--rreecceeiivvee--ppaacckk(1)
           Receive what is pushed into the repository.

       ggiitt--sshheellll(1)
           Restricted login shell for Git-only SSH access.

       ggiitt--uuppllooaadd--aarrcchhiivvee(1)
           Send archive back to git-archive.

       ggiitt--uuppllooaadd--ppaacckk(1)
           Send objects packed back to git-fetch-pack.

   IInntteerrnnaall hheellppeerr ccoommmmaannddss
       These are internal helper commands used by other commands; end users
       typically do not use them directly.

       ggiitt--cchheecckk--aattttrr(1)
           Display gitattributes information.

       ggiitt--cchheecckk--iiggnnoorree(1)
           Debug gitignore / exclude files.

       ggiitt--cchheecckk--mmaaiillmmaapp(1)
           Show canonical names and email addresses of contacts.

       ggiitt--cchheecckk--rreeff--ffoorrmmaatt(1)
           Ensures that a reference name is well formed.

       ggiitt--ccoolluummnn(1)
           Display data in columns.

       ggiitt--ccrreeddeennttiiaall(1)
           Retrieve and store user credentials.

       ggiitt--ccrreeddeennttiiaall--ccaacchhee(1)
           Helper to temporarily store passwords in memory.

       ggiitt--ccrreeddeennttiiaall--ssttoorree(1)
           Helper to store credentials on disk.

       ggiitt--ffmmtt--mmeerrggee--mmssgg(1)
           Produce a merge commit message.

       ggiitt--mmaaiilliinnffoo(1)
           Extracts patch and authorship from a single e-mail message.

       ggiitt--mmaaiillsspplliitt(1)
           Simple UNIX mbox splitter program.

       ggiitt--mmeerrggee--oonnee--ffiillee(1)
           The standard helper program to use with git-merge-index.

       ggiitt--ppaattcchh--iidd(1)
           Compute unique ID for a patch.

       ggiitt--sshh--ii1188nn(1)
           Git’s i18n setup code for shell scripts.

       ggiitt--sshh--sseettuupp(1)
           Common Git shell script setup code.

       ggiitt--ssttrriippssppaaccee(1)
           Remove unnecessary whitespace.

CCOONNFFIIGGUURRAATTIIOONN MMEECCHHAANNIISSMM
       Git uses a simple text format to store customizations that are per
       repository and are per user. Such a configuration file may look like
       this:

           #
           # A '#' or ';' character indicates a comment.
           #

           ; core variables
           [core]
                   ; Don't trust file modes
                   filemode = false

           ; user identity
           [user]
                   name = "Junio C Hamano"
                   email = "gitster@pobox.com"


       Various commands read from the configuration file and adjust their
       operation accordingly. See ggiitt--ccoonnffiigg(1) for a list and more details
       about the configuration mechanism.

IIDDEENNTTIIFFIIEERR TTEERRMMIINNOOLLOOGGYY
       <object>
           Indicates the object name for any type of object.

       <blob>
           Indicates a blob object name.

       <tree>
           Indicates a tree object name.

       <commit>
           Indicates a commit object name.

       <tree-ish>
           Indicates a tree, commit or tag object name. A command that takes a
           <tree-ish> argument ultimately wants to operate on a <tree> object
           but automatically dereferences <commit> and <tag> objects that
           point at a <tree>.

       <commit-ish>
           Indicates a commit or tag object name. A command that takes a
           <commit-ish> argument ultimately wants to operate on a <commit>
           object but automatically dereferences <tag> objects that point at a
           <commit>.

       <type>
           Indicates that an object type is required. Currently one of: blob,
           tree, commit, or tag.

       <file>
           Indicates a filename - almost always relative to the root of the
           tree structure GIT_INDEX_FILE describes.

SSYYMMBBOOLLIICC IIDDEENNTTIIFFIIEERRSS
       Any Git command accepting any <object> can also use the following
       symbolic notation:

       HEAD
           indicates the head of the current branch.

       <tag>
           a valid tag _n_a_m_e (i.e. a refs/tags/<tag> reference).

       <head>
           a valid head _n_a_m_e (i.e. a refs/heads/<head> reference).

       For a more complete list of ways to spell object names, see "SPECIFYING
       REVISIONS" section in ggiittrreevviissiioonnss(7).

FFIILLEE//DDIIRREECCTTOORRYY SSTTRRUUCCTTUURREE
       Please see the ggiittrreeppoossiittoorryy--llaayyoouutt(5) document.

       Read ggiitthhooookkss(5) for more details about each hook.

       Higher level SCMs may provide and manage additional information in the
       $GIT_DIR.

TTEERRMMIINNOOLLOOGGYY
       Please see ggiittgglloossssaarryy(7).

EENNVVIIRROONNMMEENNTT VVAARRIIAABBLLEESS
       Various Git commands use the following environment variables:

   TThhee GGiitt RReeppoossiittoorryy
       These environment variables apply to _a_l_l core Git commands. Nb: it is
       worth noting that they may be used/overridden by SCMS sitting above Git
       so take care if using Cogito etc.

       _G_I_T___I_N_D_E_X___F_I_L_E
           This environment allows the specification of an alternate index
           file. If not specified, the default of $GIT_DIR/index is used.

       _G_I_T___I_N_D_E_X___V_E_R_S_I_O_N
           This environment variable allows the specification of an index
           version for new repositories. It won’t affect existing index files.
           By default index file version [23] is used.

       _G_I_T___O_B_J_E_C_T___D_I_R_E_C_T_O_R_Y
           If the object storage directory is specified via this environment
           variable then the sha1 directories are created underneath -
           otherwise the default $GIT_DIR/objects directory is used.

       _G_I_T___A_L_T_E_R_N_A_T_E___O_B_J_E_C_T___D_I_R_E_C_T_O_R_I_E_S
           Due to the immutable nature of Git objects, old objects can be
           archived into shared, read-only directories. This variable
           specifies a ":" separated (on Windows ";" separated) list of Git
           object directories which can be used to search for Git objects. New
           objects will not be written to these directories.

       _G_I_T___D_I_R
           If the _G_I_T___D_I_R environment variable is set then it specifies a path
           to use instead of the default .git for the base of the repository.
           The _-_-_g_i_t_-_d_i_r command-line option also sets this value.

       _G_I_T___W_O_R_K___T_R_E_E
           Set the path to the root of the working tree. This can also be
           controlled by the _-_-_w_o_r_k_-_t_r_e_e command-line option and the
           core.worktree configuration variable.

       _G_I_T___N_A_M_E_S_P_A_C_E
           Set the Git namespace; see ggiittnnaammeessppaacceess(7) for details. The
           _-_-_n_a_m_e_s_p_a_c_e command-line option also sets this value.

       _G_I_T___C_E_I_L_I_N_G___D_I_R_E_C_T_O_R_I_E_S
           This should be a colon-separated list of absolute paths. If set, it
           is a list of directories that Git should not chdir up into while
           looking for a repository directory (useful for excluding
           slow-loading network directories). It will not exclude the current
           working directory or a GIT_DIR set on the command line or in the
           environment. Normally, Git has to read the entries in this list and
           resolve any symlink that might be present in order to compare them
           with the current directory. However, if even this access is slow,
           you can add an empty entry to the list to tell Git that the
           subsequent entries are not symlinks and needn’t be resolved; e.g.,
           _G_I_T___C_E_I_L_I_N_G___D_I_R_E_C_T_O_R_I_E_S_=_/_m_a_y_b_e_/_s_y_m_l_i_n_k_:_:_/_v_e_r_y_/_s_l_o_w_/_n_o_n_/_s_y_m_l_i_n_k.

       _G_I_T___D_I_S_C_O_V_E_R_Y___A_C_R_O_S_S___F_I_L_E_S_Y_S_T_E_M
           When run in a directory that does not have ".git" repository
           directory, Git tries to find such a directory in the parent
           directories to find the top of the working tree, but by default it
           does not cross filesystem boundaries. This environment variable can
           be set to true to tell Git not to stop at filesystem boundaries.
           Like _G_I_T___C_E_I_L_I_N_G___D_I_R_E_C_T_O_R_I_E_S, this will not affect an explicit
           repository directory set via _G_I_T___D_I_R or on the command line.

   GGiitt CCoommmmiittss
       _G_I_T___A_U_T_H_O_R___N_A_M_E, _G_I_T___A_U_T_H_O_R___E_M_A_I_L, _G_I_T___A_U_T_H_O_R___D_A_T_E, _G_I_T___C_O_M_M_I_T_T_E_R___N_A_M_E,
       _G_I_T___C_O_M_M_I_T_T_E_R___E_M_A_I_L, _G_I_T___C_O_M_M_I_T_T_E_R___D_A_T_E, _E_M_A_I_L
           see ggiitt--ccoommmmiitt--ttrreeee(1)

   GGiitt DDiiffffss
       _G_I_T___D_I_F_F___O_P_T_S
           Only valid setting is "--unified=??" or "-u??" to set the number of
           context lines shown when a unified diff is created. This takes
           precedence over any "-U" or "--unified" option value passed on the
           Git diff command line.

       _G_I_T___E_X_T_E_R_N_A_L___D_I_F_F
           When the environment variable _G_I_T___E_X_T_E_R_N_A_L___D_I_F_F is set, the program
           named by it is called, instead of the diff invocation described
           above. For a path that is added, removed, or modified,
           _G_I_T___E_X_T_E_R_N_A_L___D_I_F_F is called with 7 parameters:

               path old-file old-hex old-mode new-file new-hex new-mode

           where:

       <old|new>-file
           are files GIT_EXTERNAL_DIFF can use to read the contents of
           <old|new>,

       <old|new>-hex
           are the 40-hexdigit SHA-1 hashes,

       <old|new>-mode
           are the octal representation of the file modes.

           The file parameters can point at the user’s working file (e.g.
           new-file in "git-diff-files"), /dev/null (e.g.  old-file when a new
           file is added), or a temporary file (e.g.  old-file in the index).
           _G_I_T___E_X_T_E_R_N_A_L___D_I_F_F should not worry about unlinking the temporary
           file --- it is removed when _G_I_T___E_X_T_E_R_N_A_L___D_I_F_F exits.

           For a path that is unmerged, _G_I_T___E_X_T_E_R_N_A_L___D_I_F_F is called with 1
           parameter, <path>.

           For each path _G_I_T___E_X_T_E_R_N_A_L___D_I_F_F is called, two environment
           variables, _G_I_T___D_I_F_F___P_A_T_H___C_O_U_N_T_E_R and _G_I_T___D_I_F_F___P_A_T_H___T_O_T_A_L are set.

       _G_I_T___D_I_F_F___P_A_T_H___C_O_U_N_T_E_R
           A 1-based counter incremented by one for every path.

       _G_I_T___D_I_F_F___P_A_T_H___T_O_T_A_L
           The total number of paths.

   ootthheerr
       _G_I_T___M_E_R_G_E___V_E_R_B_O_S_I_T_Y
           A number controlling the amount of output shown by the recursive
           merge strategy. Overrides merge.verbosity. See ggiitt--mmeerrggee(1)

       _G_I_T___P_A_G_E_R
           This environment variable overrides $PAGER. If it is set to an
           empty string or to the value "cat", Git will not launch a pager.
           See also the core.pager option in ggiitt--ccoonnffiigg(1).

       _G_I_T___E_D_I_T_O_R
           This environment variable overrides $EDITOR and $VISUAL. It is used
           by several Git commands when, on interactive mode, an editor is to
           be launched. See also ggiitt--vvaarr(1) and the core.editor option in ggiitt--
           ccoonnffiigg(1).

       _G_I_T___S_S_H
           If this environment variable is set then _g_i_t _f_e_t_c_h and _g_i_t _p_u_s_h
           will use this command instead of _s_s_h when they need to connect to a
           remote system. The _$_G_I_T___S_S_H command will be given exactly two or
           four arguments: the _u_s_e_r_n_a_m_e_@_h_o_s_t (or just _h_o_s_t) from the URL and
           the shell command to execute on that remote system, optionally
           preceded by _-_p (literally) and the _p_o_r_t from the URL when it
           specifies something other than the default SSH port.

           To pass options to the program that you want to list in GIT_SSH you
           will need to wrap the program and options into a shell script, then
           set GIT_SSH to refer to the shell script.

           Usually it is easier to configure any desired options through your
           personal .ssh/config file. Please consult your ssh documentation
           for further details.

       _G_I_T___A_S_K_P_A_S_S
           If this environment variable is set, then Git commands which need
           to acquire passwords or passphrases (e.g. for HTTP or IMAP
           authentication) will call this program with a suitable prompt as
           command-line argument and read the password from its STDOUT. See
           also the _c_o_r_e_._a_s_k_p_a_s_s option in ggiitt--ccoonnffiigg(1).

       _G_I_T___C_O_N_F_I_G___N_O_S_Y_S_T_E_M
           Whether to skip reading settings from the system-wide
           $(prefix)/etc/gitconfig file. This environment variable can be used
           along with $HOME and $XDG_CONFIG_HOME to create a predictable
           environment for a picky script, or you can set it temporarily to
           avoid using a buggy /etc/gitconfig file while waiting for someone
           with sufficient permissions to fix it.

       _G_I_T___F_L_U_S_H
           If this environment variable is set to "1", then commands such as
           _g_i_t _b_l_a_m_e (in incremental mode), _g_i_t _r_e_v_-_l_i_s_t, _g_i_t _l_o_g, _g_i_t
           _c_h_e_c_k_-_a_t_t_r and _g_i_t _c_h_e_c_k_-_i_g_n_o_r_e will force a flush of the output
           stream after each record have been flushed. If this variable is set
           to "0", the output of these commands will be done using completely
           buffered I/O. If this environment variable is not set, Git will
           choose buffered or record-oriented flushing based on whether stdout
           appears to be redirected to a file or not.

       _G_I_T___T_R_A_C_E
           Enables general trace messages, e.g. alias expansion, built-in
           command execution and external command execution.

           If this variable is set to "1", "2" or "true" (comparison is case
           insensitive), trace messages will be printed to stderr.

           If the variable is set to an integer value greater than 2 and lower
           than 10 (strictly) then Git will interpret this value as an open
           file descriptor and will try to write the trace messages into this
           file descriptor.

           Alternatively, if the variable is set to an absolute path (starting
           with a _/ character), Git will interpret this as a file path and
           will try to write the trace messages into it.

           Unsetting the variable, or setting it to empty, "0" or "false"
           (case insensitive) disables trace messages.

       _G_I_T___T_R_A_C_E___P_A_C_K___A_C_C_E_S_S
           Enables trace messages for all accesses to any packs. For each
           access, the pack file name and an offset in the pack is recorded.
           This may be helpful for troubleshooting some pack-related
           performance problems. See _G_I_T___T_R_A_C_E for available trace output
           options.

       _G_I_T___T_R_A_C_E___P_A_C_K_E_T
           Enables trace messages for all packets coming in or out of a given
           program. This can help with debugging object negotiation or other
           protocol issues. Tracing is turned off at a packet starting with
           "PACK". See _G_I_T___T_R_A_C_E for available trace output options.

       _G_I_T___T_R_A_C_E___P_E_R_F_O_R_M_A_N_C_E
           Enables performance related trace messages, e.g. total execution
           time of each Git command. See _G_I_T___T_R_A_C_E for available trace output
           options.

       _G_I_T___T_R_A_C_E___S_E_T_U_P
           Enables trace messages printing the .git, working tree and current
           working directory after Git has completed its setup phase. See
           _G_I_T___T_R_A_C_E for available trace output options.

       _G_I_T___T_R_A_C_E___S_H_A_L_L_O_W
           Enables trace messages that can help debugging fetching / cloning
           of shallow repositories. See _G_I_T___T_R_A_C_E for available trace output
           options.

       GIT_LITERAL_PATHSPECS
           Setting this variable to 1 will cause Git to treat all pathspecs
           literally, rather than as glob patterns. For example, running
           GIT_LITERAL_PATHSPECS=1 git log -- '*.c' will search for commits
           that touch the path *.c, not any paths that the glob *.c matches.
           You might want this if you are feeding literal paths to Git (e.g.,
           paths previously given to you by git ls-tree, --raw diff output,
           etc).

       GIT_GLOB_PATHSPECS
           Setting this variable to 1 will cause Git to treat all pathspecs as
           glob patterns (aka "glob" magic).

       GIT_NOGLOB_PATHSPECS
           Setting this variable to 1 will cause Git to treat all pathspecs as
           literal (aka "literal" magic).

       GIT_ICASE_PATHSPECS
           Setting this variable to 1 will cause Git to treat all pathspecs as
           case-insensitive.

       _G_I_T___R_E_F_L_O_G___A_C_T_I_O_N
           When a ref is updated, reflog entries are created to keep track of
           the reason why the ref was updated (which is typically the name of
           the high-level command that updated the ref), in addition to the
           old and new values of the ref. A scripted Porcelain command can use
           set_reflog_action helper function in git-sh-setup to set its name
           to this variable when it is invoked as the top level command by the
           end user, to be recorded in the body of the reflog.

DDIISSCCUUSSSSIIOONN
       More detail on the following is available from the GGiitt ccoonncceeppttss cchhaapptteerr
       ooff tthhee uusseerr--mmaannuuaall[3] and ggiittccoorree--ttuuttoorriiaall(7).

       A Git project normally consists of a working directory with a ".git"
       subdirectory at the top level. The .git directory contains, among other
       things, a compressed object database representing the complete history
       of the project, an "index" file which links that history to the current
       contents of the working tree, and named pointers into that history such
       as tags and branch heads.

       The object database contains objects of three main types: blobs, which
       hold file data; trees, which point to blobs and other trees to build up
       directory hierarchies; and commits, which each reference a single tree
       and some number of parent commits.

       The commit, equivalent to what other systems call a "changeset" or
       "version", represents a step in the project’s history, and each parent
       represents an immediately preceding step. Commits with more than one
       parent represent merges of independent lines of development.

       All objects are named by the SHA-1 hash of their contents, normally
       written as a string of 40 hex digits. Such names are globally unique.
       The entire history leading up to a commit can be vouched for by signing
       just that commit. A fourth object type, the tag, is provided for this
       purpose.

       When first created, objects are stored in individual files, but for
       efficiency may later be compressed together into "pack files".

       Named pointers called refs mark interesting points in history. A ref
       may contain the SHA-1 name of an object or the name of another ref.
       Refs with names beginning ref/head/ contain the SHA-1 name of the most
       recent commit (or "head") of a branch under development. SHA-1 names of
       tags of interest are stored under ref/tags/. A special ref named HEAD
       contains the name of the currently checked-out branch.

       The index file is initialized with a list of all paths and, for each
       path, a blob object and a set of attributes. The blob object represents
       the contents of the file as of the head of the current branch. The
       attributes (last modified time, size, etc.) are taken from the
       corresponding file in the working tree. Subsequent changes to the
       working tree can be found by comparing these attributes. The index may
       be updated with new content, and new commits may be created from the
       content stored in the index.

       The index is also capable of storing multiple entries (called "stages")
       for a given pathname. These stages are used to hold the various
       unmerged version of a file when a merge is in progress.

FFUURRTTHHEERR DDOOCCUUMMEENNTTAATTIIOONN
       See the references in the "description" section to get started using
       Git. The following is probably more detail than necessary for a
       first-time user.

       The GGiitt ccoonncceeppttss cchhaapptteerr ooff tthhee uusseerr--mmaannuuaall[3] and ggiittccoorree--ttuuttoorriiaall(7)
       both provide introductions to the underlying Git architecture.

       See ggiittwwoorrkkfflloowwss(7) for an overview of recommended workflows.

       See also the hhoowwttoo[4] documents for some useful examples.

       The internals are documented in the GGiitt AAPPII ddooccuummeennttaattiioonn[5].

       Users migrating from CVS may also want to read ggiittccvvss--mmiiggrraattiioonn(7).

AAUUTTHHOORRSS
       Git was started by Linus Torvalds, and is currently maintained by Junio
       C Hamano. Numerous contributions have come from the Git mailing list
       <ggiitt@@vvggeerr..kkeerrnneell..oorrgg[6]>.
       hhttttpp::////wwwwww..ooppeennhhuubb..nneett//pp//ggiitt//ccoonnttrriibbuuttoorrss//ssuummmmaarryy gives you a more
       complete list of contributors.

       If you have a clone of git.git itself, the output of ggiitt--sshhoorrttlloogg(1)
       and ggiitt--bbllaammee(1) can show you the authors for specific parts of the
       project.

RREEPPOORRTTIINNGG BBUUGGSS
       Report bugs to the Git mailing list <ggiitt@@vvggeerr..kkeerrnneell..oorrgg[6]> where the
       development and maintenance is primarily done. You do not have to be
       subscribed to the list to send a message there.

SSEEEE AALLSSOO
       ggiittttuuttoorriiaall(7), ggiittttuuttoorriiaall--22(7), EEvveerryyddaayy GGiitt[1], ggiittccvvss--mmiiggrraattiioonn(7),
       ggiittgglloossssaarryy(7), ggiittccoorree--ttuuttoorriiaall(7), ggiittccllii(7), TThhee GGiitt UUsseerr’’ss
       MMaannuuaall[2], ggiittwwoorrkkfflloowwss(7)

GGIITT
       Part of the ggiitt(1) suite

NNOOTTEESS
        1. Everyday Git
           file:///usr/share/doc/git/html/everyday.html

        2. Git User’s Manual
           file:///usr/share/doc/git/html/user-manual.html

        3. Git concepts chapter of the user-manual
           file:///usr/share/doc/git/html/user-manual.html#git-concepts

        4. howto
           file:///usr/share/doc/git/html/howto-index.html

        5. Git API documentation
           file:///usr/share/doc/git/html/technical/api-index.html

        6. git@vger.kernel.org
           mailto:git@vger.kernel.org



Git 2.1.4                         02/03/2015                            GIT(1)
