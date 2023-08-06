<script>
    const username = "sky";

    export const command_responses = {
        "nix run github:Minion3665/links": "> [!special] links_block",
        "help|copyrights?|credits?|li[cs]en[cs]es?": (
            "This site has its code licensed under the GNU Affero General Public License.\n" +
            "You can find a full copy " +
            "[in the LICENSE file](https://github.com/Minion3665/starrysky.fyi/blob/development/LICENSE)\n\n" +
            "You can find the full code for the website " +
            "[on GitHub](https://github.com/Minion3665/starrysky.fyi/tree/development/apps/a)\n\n" +
            "Additional licenses, including those for distributed fonts and copypastas is included " +
            "[in the licenses folder on GitHub](https://github.com/Minion3665/starrysky.fyi/tree/development/licenses)"
        ),
        "unalias whoami": "unalias: whoami: not found",
        "sudo( .*)?": (
            "We trust you have received the usual lecture from the local System\n" +
            "Administrator. It usually boils down to these three things:\n\n" +
            " #1) Respect the privacy of others.\n" +
            " #2) Think before you type.\n" +
            " #3) With great power comes great responsibility.\n\n" +
            `${username} is not in the sudoers file.  This incident will be reported.`
        ),
        "whoami": username,
        "ls": "",
        "cat( .*)?": "cat:$1: No such file or directory",
        "echo( (.*))?": "$2",
    };
</script>