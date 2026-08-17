.class public Lorg/seamless/swing/logging/LogCategorySelector;
.super Ljavax/swing/JDialog;
.source "SourceFile"


# instance fields
.field protected final mainPanel:Ljavax/swing/JPanel;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/seamless/swing/logging/LogCategory;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljavax/swing/JDialog;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljavax/swing/JPanel;

    .line 5
    .line 6
    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/seamless/swing/logging/LogCategorySelector;->mainPanel:Ljavax/swing/JPanel;

    .line 10
    .line 11
    const-string v1, "Select logging categories..."

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lorg/seamless/swing/logging/LogCategorySelector;->setTitle(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljavax/swing/BoxLayout;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-direct {v1, v0, v2}, Ljavax/swing/BoxLayout;-><init>(Ljava/awt/Container;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 23
    .line 24
    .line 25
    const/16 v1, 0xa

    .line 26
    .line 27
    invoke-static {v1, v1, v1, v1}, Ljavax/swing/BorderFactory;->createEmptyBorder(IIII)Ljavax/swing/border/Border;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lorg/seamless/swing/logging/LogCategorySelector;->addLogCategories(Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Ljavax/swing/JScrollPane;

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Ljavax/swing/BorderFactory;->createEmptyBorder()Ljavax/swing/border/Border;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Ljavax/swing/JScrollPane;->setBorder(Ljavax/swing/border/Border;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lorg/seamless/swing/logging/LogCategorySelector;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 50
    .line 51
    .line 52
    new-instance p1, Ljava/awt/Dimension;

    .line 53
    .line 54
    const/16 v0, 0x2ee

    .line 55
    .line 56
    const/16 v1, 0x226

    .line 57
    .line 58
    invoke-direct {p1, v0, v1}, Ljava/awt/Dimension;-><init>(II)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lorg/seamless/swing/logging/LogCategorySelector;->setMaximumSize(Ljava/awt/Dimension;)V

    .line 62
    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    invoke-virtual {p0, p1}, Lorg/seamless/swing/logging/LogCategorySelector;->setResizable(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogCategorySelector;->pack()V

    .line 69
    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public addLogCategories(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/seamless/swing/logging/LogCategory;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lorg/seamless/swing/logging/LogCategory;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lorg/seamless/swing/logging/LogCategorySelector;->addLogCategory(Lorg/seamless/swing/logging/LogCategory;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public addLogCategory(Lorg/seamless/swing/logging/LogCategory;)V
    .locals 2

    .line 1
    new-instance v0, Ljavax/swing/JPanel;

    .line 2
    .line 3
    new-instance v1, Ljava/awt/BorderLayout;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljavax/swing/JPanel;-><init>(Ljava/awt/LayoutManager;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/seamless/swing/logging/LogCategory;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljava/lang/String;)Ljavax/swing/border/TitledBorder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, v0}, Lorg/seamless/swing/logging/LogCategorySelector;->addLoggerGroups(Lorg/seamless/swing/logging/LogCategory;Ljavax/swing/JPanel;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lorg/seamless/swing/logging/LogCategorySelector;->mainPanel:Ljavax/swing/JPanel;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public addLoggerGroups(Lorg/seamless/swing/logging/LogCategory;Ljavax/swing/JPanel;)V
    .locals 6

    .line 1
    new-instance v0, Ljavax/swing/JPanel;

    .line 2
    .line 3
    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljavax/swing/BoxLayout;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v0, v2}, Ljavax/swing/BoxLayout;-><init>(Ljava/awt/Container;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/seamless/swing/logging/LogCategory;->getGroups()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lorg/seamless/swing/logging/LogCategory$Group;

    .line 35
    .line 36
    new-instance v4, Ljavax/swing/JCheckBox;

    .line 37
    .line 38
    invoke-virtual {v2}, Lorg/seamless/swing/logging/LogCategory$Group;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-direct {v4, v5}, Ljavax/swing/JCheckBox;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lorg/seamless/swing/logging/LogCategory$Group;->isEnabled()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-virtual {v4, v5}, Ljavax/swing/JCheckBox;->setSelected(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v3}, Ljavax/swing/JCheckBox;->setFocusable(Z)V

    .line 53
    .line 54
    .line 55
    new-instance v3, Lorg/seamless/swing/logging/LogCategorySelector$1;

    .line 56
    .line 57
    invoke-direct {v3, p0, v2}, Lorg/seamless/swing/logging/LogCategorySelector$1;-><init>(Lorg/seamless/swing/logging/LogCategorySelector;Lorg/seamless/swing/logging/LogCategory$Group;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v3}, Ljavax/swing/JCheckBox;->addItemListener(Ljava/awt/event/ItemListener;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    new-instance v1, Ljavax/swing/JToolBar;

    .line 68
    .line 69
    invoke-direct {v1}, Ljavax/swing/JToolBar;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v3}, Ljavax/swing/JToolBar;->setFloatable(Z)V

    .line 73
    .line 74
    .line 75
    new-instance v2, Ljavax/swing/JButton;

    .line 76
    .line 77
    const-string v4, "All"

    .line 78
    .line 79
    invoke-direct {v2, v4}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljavax/swing/JButton;->setFocusable(Z)V

    .line 83
    .line 84
    .line 85
    new-instance v4, Lorg/seamless/swing/logging/LogCategorySelector$2;

    .line 86
    .line 87
    invoke-direct {v4, p0, p1, p2}, Lorg/seamless/swing/logging/LogCategorySelector$2;-><init>(Lorg/seamless/swing/logging/LogCategorySelector;Lorg/seamless/swing/logging/LogCategory;Ljavax/swing/JPanel;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v4}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 94
    .line 95
    .line 96
    new-instance v2, Ljavax/swing/JButton;

    .line 97
    .line 98
    const-string v4, "None"

    .line 99
    .line 100
    invoke-direct {v2, v4}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v3}, Ljavax/swing/JButton;->setFocusable(Z)V

    .line 104
    .line 105
    .line 106
    new-instance v3, Lorg/seamless/swing/logging/LogCategorySelector$3;

    .line 107
    .line 108
    invoke-direct {v3, p0, p1, p2}, Lorg/seamless/swing/logging/LogCategorySelector$3;-><init>(Lorg/seamless/swing/logging/LogCategorySelector;Lorg/seamless/swing/logging/LogCategory;Ljavax/swing/JPanel;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v3}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 115
    .line 116
    .line 117
    const-string p1, "Center"

    .line 118
    .line 119
    invoke-virtual {p2, v0, p1}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    const-string p1, "North"

    .line 123
    .line 124
    invoke-virtual {p2, v1, p1}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public disableLoggerGroup(Lorg/seamless/swing/logging/LogCategory$Group;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lorg/seamless/swing/logging/LogCategory$Group;->setEnabled(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/seamless/swing/logging/LogCategory$Group;->getPreviousLevels()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 24
    .line 25
    invoke-virtual {v1}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;->getLogger()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;->getLevel()Ljava/util/logging/Level;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Lorg/seamless/swing/logging/LogCategory$Group;->getPreviousLevels()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1}, Lorg/seamless/swing/logging/LogCategory$Group;->getLoggerLevels()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 70
    .line 71
    invoke-virtual {v1}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;->getLogger()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {p1}, Lorg/seamless/swing/logging/LogCategory$Group;->getPreviousLevels()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public enableLoggerGroup(Lorg/seamless/swing/logging/LogCategory$Group;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lorg/seamless/swing/logging/LogCategory$Group;->setEnabled(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/seamless/swing/logging/LogCategory$Group;->getPreviousLevels()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/seamless/swing/logging/LogCategory$Group;->getLoggerLevels()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 31
    .line 32
    invoke-virtual {v1}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;->getLogger()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p1}, Lorg/seamless/swing/logging/LogCategory$Group;->getPreviousLevels()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    new-instance v4, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {p0, v2}, Lorg/seamless/swing/logging/LogCategorySelector;->getLevel(Ljava/util/logging/Logger;)Ljava/util/logging/Level;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-direct {v4, v5, v6}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;-><init>(Ljava/lang/String;Ljava/util/logging/Level;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lorg/seamless/swing/logging/LogCategory$LoggerLevel;->getLevel()Ljava/util/logging/Level;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method public getLevel(Ljava/util/logging/Logger;)Ljava/util/logging/Level;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getParent()Ljava/util/logging/Logger;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    return-object v0
.end method
