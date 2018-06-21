char decode(int code)
{

    switch (code)
    {
    case 0x45:
        return '0';
    case 0x16:
        return '1';
    case 0x1e:
        return '2';
    case 0x26:
        return '3';
    case 0x25:
        return '4';
    case 0x2e:
        return '5';
    case 0x36:
        return '6';
    case 0x3d:
        return '7';
    case 0x3e:
        return '8';
    case 0x46:
        return '9';
    case 0x29:
        return ' ';
    case 0x5a:
        return '\r';
    case 0x1c:
        return 'a';
    case 0x32:
        return 'b';
    case 0x21:
        return 'c';
    case 0x23:
        return 'd';
    case 0x24:
        return 'e';
    case 0x2b:
        return 'f';
    case 0x34:
        return 'g';
    case 0x33:
        return 'h';
    case 0x43:
        return 'i';
    case 0x3b:
        return 'j';
    case 0x42:
        return 'k';
    case 0x4b:
        return 'l';
    case 0x3a:
        return 'm';
    case 0x31:
        return 'n';
    case 0x44:
        return 'o';
    case 0x4d:
        return 'p';
    case 0x15:
        return 'q';
    case 0x2d:
        return 'r';
    case 0x1b:
        return 's';
    case 0x2c:
        return 't';
    case 0x3c:
        return 'u';
    case 0x2a:
        return 'v';
    case 0x1d:
        return 'w';
    case 0x22:
        return 'x';
    case 0x35:
        return 'y';
    case 0x1a:
        return 'z';
    default:
        return '\0';
    }
}