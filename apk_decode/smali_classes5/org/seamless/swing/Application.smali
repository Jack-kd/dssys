.class public Lorg/seamless/swing/Application;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static center(Ljava/awt/Window;)Ljava/awt/Window;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v1

    .line 2
    iget v2, v1, Ljava/awt/Dimension;->width:I

    iget v3, v0, Ljava/awt/Dimension;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 3
    iget v1, v1, Ljava/awt/Dimension;->height:I

    iget v0, v0, Ljava/awt/Dimension;->height:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-gez v2, :cond_0

    move v2, v0

    :cond_0
    if-gez v1, :cond_1

    move v1, v0

    .line 4
    :cond_1
    invoke-virtual {p0, v2, v1}, Ljava/awt/Window;->setLocation(II)V

    return-object p0
.end method

.method public static center(Ljava/awt/Window;Ljava/awt/Window;)Ljava/awt/Window;
    .locals 8

    .line 5
    invoke-virtual {p1}, Ljava/awt/Window;->getX()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 6
    invoke-virtual {p1}, Ljava/awt/Window;->getY()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p1}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v6

    div-double/2addr v6, v4

    add-double/2addr v2, v6

    .line 7
    invoke-virtual {p0}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/Dimension;->getWidth()D

    move-result-wide v6

    div-double/2addr v6, v4

    sub-double/2addr v0, v6

    double-to-int p1, v0

    .line 8
    invoke-virtual {p0}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Dimension;->getHeight()D

    move-result-wide v0

    div-double/2addr v0, v4

    sub-double/2addr v2, v0

    double-to-int v0, v2

    .line 9
    invoke-virtual {p0, p1, v0}, Ljava/awt/Window;->setLocation(II)V

    return-object p0
.end method

.method public static copyToClipboard(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/awt/Toolkit;->getSystemClipboard()Ljava/awt/datatransfer/Clipboard;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/awt/datatransfer/StringSelection;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Ljava/awt/datatransfer/StringSelection;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v1}, Ljava/awt/datatransfer/Clipboard;->setContents(Ljava/awt/datatransfer/Transferable;Ljava/awt/datatransfer/ClipboardOwner;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static createImageIcon(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/ImageIcon;
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, v0}, Lorg/seamless/swing/Application;->createImageIcon(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljavax/swing/ImageIcon;

    move-result-object p0

    return-object p0
.end method

.method public static createImageIcon(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljavax/swing/ImageIcon;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    new-instance p1, Ljavax/swing/ImageIcon;

    invoke-direct {p1, p0, p2}, Ljavax/swing/ImageIcon;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object p1

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t find image icon on path: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decreaseFontSize(Ljavax/swing/JComponent;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/awt/Font;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljavax/swing/JComponent;->getFont()Ljava/awt/Font;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/awt/Font;->getFontName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Ljavax/swing/JComponent;->getFont()Ljava/awt/Font;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/awt/Font;->getStyle()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p0}, Ljavax/swing/JComponent;->getFont()Ljava/awt/Font;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/awt/Font;->getSize()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    add-int/lit8 v3, v3, -0x2

    .line 28
    .line 29
    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljavax/swing/JComponent;->setFont(Ljava/awt/Font;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static increaseFontSize(Ljavax/swing/JComponent;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/awt/Font;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljavax/swing/JComponent;->getFont()Ljava/awt/Font;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/awt/Font;->getFontName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Ljavax/swing/JComponent;->getFont()Ljava/awt/Font;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/awt/Font;->getStyle()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p0}, Ljavax/swing/JComponent;->getFont()Ljava/awt/Font;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/awt/Font;->getSize()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    add-int/lit8 v3, v3, 0x2

    .line 28
    .line 29
    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljavax/swing/JComponent;->setFont(Ljava/awt/Font;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static maximize(Ljava/awt/Window;)Ljava/awt/Window;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/awt/Window;->getSize()Ljava/awt/Dimension;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, v0, Ljava/awt/Dimension;->width:I

    .line 13
    .line 14
    iget v0, v0, Ljava/awt/Dimension;->height:I

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p0, v2, v2, v1, v0}, Ljava/awt/Window;->setBounds(IIII)V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public static showError(Ljava/awt/Component;Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    new-instance v0, Ljavax/swing/JTextArea;

    .line 2
    .line 3
    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/awt/Font;

    .line 7
    .line 8
    const/16 v2, 0xa

    .line 9
    .line 10
    const-string v3, "Sans-Serif"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-direct {v1, v3, v4, v2}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setFont(Ljava/awt/Font;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v4}, Ljavax/swing/JTextArea;->setEditable(Z)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/io/StringWriter;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v2, Ljava/io/PrintWriter;

    .line 28
    .line 29
    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance p1, Ljavax/swing/JScrollPane;

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Ljava/awt/Dimension;

    .line 48
    .line 49
    const/16 v1, 0x15e

    .line 50
    .line 51
    const/16 v2, 0x96

    .line 52
    .line 53
    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 57
    .line 58
    .line 59
    const-string v0, "An Error Has Occurred"

    .line 60
    .line 61
    invoke-static {p0, p1, v0, v4}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public static varargs showInfo(Ljava/awt/Component;[Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljavax/swing/JTextArea;

    .line 2
    .line 3
    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/awt/Font;

    .line 7
    .line 8
    const/16 v2, 0xa

    .line 9
    .line 10
    const-string v3, "Sans-Serif"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-direct {v1, v3, v4, v2}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setFont(Ljava/awt/Font;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v4}, Ljavax/swing/JTextArea;->setEditable(Z)V

    .line 20
    .line 21
    .line 22
    array-length v1, p1

    .line 23
    :goto_0
    if-ge v4, v1, :cond_0

    .line 24
    .line 25
    aget-object v2, p1, v4

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, "\n"

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljavax/swing/JTextArea;->append(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Ljavax/swing/JScrollPane;

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Ljava/awt/Dimension;

    .line 56
    .line 57
    const/16 v1, 0x15e

    .line 58
    .line 59
    const/16 v2, 0x96

    .line 60
    .line 61
    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "Info"

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    invoke-static {p0, p1, v0, v1}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public static varargs showWarning(Ljava/awt/Component;[Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljavax/swing/JTextArea;

    .line 2
    .line 3
    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/awt/Font;

    .line 7
    .line 8
    const/16 v2, 0xa

    .line 9
    .line 10
    const-string v3, "Sans-Serif"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-direct {v1, v3, v4, v2}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setFont(Ljava/awt/Font;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v4}, Ljavax/swing/JTextArea;->setEditable(Z)V

    .line 20
    .line 21
    .line 22
    array-length v1, p1

    .line 23
    move v2, v4

    .line 24
    :goto_0
    if-ge v2, v1, :cond_0

    .line 25
    .line 26
    aget-object v3, p1, v2

    .line 27
    .line 28
    new-instance v5, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v3, "\n"

    .line 37
    .line 38
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v0, v3}, Ljavax/swing/JTextArea;->append(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance p1, Ljavax/swing/JScrollPane;

    .line 52
    .line 53
    invoke-direct {p1, v0}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Ljava/awt/Dimension;

    .line 57
    .line 58
    const/16 v1, 0x15e

    .line 59
    .line 60
    const/16 v2, 0x96

    .line 61
    .line 62
    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 66
    .line 67
    .line 68
    const-string v0, "Warning"

    .line 69
    .line 70
    invoke-static {p0, p1, v0, v4}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
