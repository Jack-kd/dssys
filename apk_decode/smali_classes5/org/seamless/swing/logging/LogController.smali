.class public abstract Lorg/seamless/swing/logging/LogController;
.super Lorg/seamless/swing/AbstractController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/seamless/swing/logging/LogController$Expiration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seamless/swing/AbstractController<",
        "Ljavax/swing/JPanel;",
        ">;"
    }
.end annotation


# instance fields
.field private final clearButton:Ljavax/swing/JButton;

.field private final configureButton:Ljavax/swing/JButton;

.field private final copyButton:Ljavax/swing/JButton;

.field private final expandButton:Ljavax/swing/JButton;

.field private final expirationComboBox:Ljavax/swing/JComboBox;

.field private final logCategorySelector:Lorg/seamless/swing/logging/LogCategorySelector;

.field private final logTable:Ljavax/swing/JTable;

.field private final logTableModel:Lorg/seamless/swing/logging/LogTableModel;

.field private final pauseButton:Ljavax/swing/JButton;

.field private final pauseLabel:Ljavax/swing/JLabel;

.field private final toolBar:Ljavax/swing/JToolBar;


# direct methods
.method public constructor <init>(Lorg/seamless/swing/Controller;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/seamless/swing/Controller;",
            "Ljava/util/List<",
            "Lorg/seamless/swing/logging/LogCategory;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/seamless/swing/logging/LogController$Expiration;->SIXTY_SECONDS:Lorg/seamless/swing/logging/LogController$Expiration;

    invoke-direct {p0, p1, v0, p2}, Lorg/seamless/swing/logging/LogController;-><init>(Lorg/seamless/swing/Controller;Lorg/seamless/swing/logging/LogController$Expiration;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/seamless/swing/Controller;Lorg/seamless/swing/logging/LogController$Expiration;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/seamless/swing/Controller;",
            "Lorg/seamless/swing/logging/LogController$Expiration;",
            "Ljava/util/List<",
            "Lorg/seamless/swing/logging/LogCategory;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    invoke-direct {v1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-direct {v0, v1}, Ljavax/swing/JPanel;-><init>(Ljava/awt/LayoutManager;)V

    invoke-direct {p0, v0, p1}, Lorg/seamless/swing/AbstractController;-><init>(Ljava/awt/Container;Lorg/seamless/swing/Controller;)V

    .line 3
    new-instance p1, Ljavax/swing/JToolBar;

    invoke-direct {p1}, Ljavax/swing/JToolBar;-><init>()V

    iput-object p1, p0, Lorg/seamless/swing/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    .line 4
    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogController;->createConfigureButton()Ljavax/swing/JButton;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/swing/logging/LogController;->configureButton:Ljavax/swing/JButton;

    .line 5
    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogController;->createClearButton()Ljavax/swing/JButton;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/swing/logging/LogController;->clearButton:Ljavax/swing/JButton;

    .line 6
    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogController;->createCopyButton()Ljavax/swing/JButton;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/swing/logging/LogController;->copyButton:Ljavax/swing/JButton;

    .line 7
    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogController;->createExpandButton()Ljavax/swing/JButton;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/swing/logging/LogController;->expandButton:Ljavax/swing/JButton;

    .line 8
    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogController;->createPauseButton()Ljavax/swing/JButton;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/swing/logging/LogController;->pauseButton:Ljavax/swing/JButton;

    .line 9
    new-instance v0, Ljavax/swing/JLabel;

    const-string v1, " (Active)"

    invoke-direct {v0, v1}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/seamless/swing/logging/LogController;->pauseLabel:Ljavax/swing/JLabel;

    .line 10
    new-instance v0, Ljavax/swing/JComboBox;

    invoke-static {}, Lorg/seamless/swing/logging/LogController$Expiration;->values()[Lorg/seamless/swing/logging/LogController$Expiration;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/JComboBox;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/seamless/swing/logging/LogController;->expirationComboBox:Ljavax/swing/JComboBox;

    .line 11
    new-instance v0, Lorg/seamless/swing/logging/LogCategorySelector;

    invoke-direct {v0, p3}, Lorg/seamless/swing/logging/LogCategorySelector;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lorg/seamless/swing/logging/LogController;->logCategorySelector:Lorg/seamless/swing/logging/LogCategorySelector;

    .line 12
    new-instance p3, Lorg/seamless/swing/logging/LogTableModel;

    invoke-virtual {p2}, Lorg/seamless/swing/logging/LogController$Expiration;->getSeconds()I

    move-result v0

    invoke-direct {p3, v0}, Lorg/seamless/swing/logging/LogTableModel;-><init>(I)V

    iput-object p3, p0, Lorg/seamless/swing/logging/LogController;->logTableModel:Lorg/seamless/swing/logging/LogTableModel;

    .line 13
    new-instance v0, Ljavax/swing/JTable;

    invoke-direct {v0, p3}, Ljavax/swing/JTable;-><init>(Ljavax/swing/table/TableModel;)V

    iput-object v0, p0, Lorg/seamless/swing/logging/LogController;->logTable:Ljavax/swing/JTable;

    .line 14
    new-instance p3, Lorg/seamless/swing/logging/LogController$1;

    invoke-direct {p3, p0}, Lorg/seamless/swing/logging/LogController$1;-><init>(Lorg/seamless/swing/logging/LogController;)V

    const-class v1, Lorg/seamless/swing/logging/LogMessage;

    invoke-virtual {v0, v1, p3}, Ljavax/swing/JTable;->setDefaultRenderer(Ljava/lang/Class;Ljavax/swing/table/TableCellRenderer;)V

    const/4 p3, 0x0

    .line 15
    invoke-virtual {v0, p3}, Ljavax/swing/JTable;->setCellSelectionEnabled(Z)V

    const/4 p3, 0x1

    .line 16
    invoke-virtual {v0, p3}, Ljavax/swing/JTable;->setRowSelectionAllowed(Z)V

    .line 17
    invoke-virtual {v0}, Ljavax/swing/JTable;->getSelectionModel()Ljavax/swing/ListSelectionModel;

    move-result-object p3

    new-instance v1, Lorg/seamless/swing/logging/LogController$2;

    invoke-direct {v1, p0}, Lorg/seamless/swing/logging/LogController$2;-><init>(Lorg/seamless/swing/logging/LogController;)V

    invoke-interface {p3, v1}, Ljavax/swing/ListSelectionModel;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    .line 18
    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogController;->adjustTableUI()V

    .line 19
    invoke-virtual {p0, p2}, Lorg/seamless/swing/logging/LogController;->initializeToolBar(Lorg/seamless/swing/logging/LogController$Expiration;)V

    .line 20
    invoke-virtual {p0}, Lorg/seamless/swing/AbstractController;->getView()Ljava/awt/Container;

    move-result-object p2

    check-cast p2, Ljavax/swing/JPanel;

    new-instance p3, Ljava/awt/Dimension;

    const/16 v1, 0x64

    const/16 v2, 0xfa

    invoke-direct {p3, v2, v1}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p2, p3}, Ljavax/swing/JPanel;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 21
    invoke-virtual {p0}, Lorg/seamless/swing/AbstractController;->getView()Ljava/awt/Container;

    move-result-object p2

    check-cast p2, Ljavax/swing/JPanel;

    new-instance p3, Ljava/awt/Dimension;

    const/16 v1, 0x32

    invoke-direct {p3, v2, v1}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p2, p3}, Ljavax/swing/JPanel;->setMinimumSize(Ljava/awt/Dimension;)V

    .line 22
    invoke-virtual {p0}, Lorg/seamless/swing/AbstractController;->getView()Ljava/awt/Container;

    move-result-object p2

    check-cast p2, Ljavax/swing/JPanel;

    new-instance p3, Ljavax/swing/JScrollPane;

    invoke-direct {p3, v0}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    const-string v0, "Center"

    invoke-virtual {p2, p3, v0}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0}, Lorg/seamless/swing/AbstractController;->getView()Ljava/awt/Container;

    move-result-object p2

    check-cast p2, Ljavax/swing/JPanel;

    const-string p3, "South"

    invoke-virtual {p2, p1, p3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JTable;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/seamless/swing/logging/LogController;->logTable:Ljavax/swing/JTable;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/seamless/swing/logging/LogController;->copyButton:Ljavax/swing/JButton;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/seamless/swing/logging/LogController;->expandButton:Ljavax/swing/JButton;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lorg/seamless/swing/logging/LogController;)Lorg/seamless/swing/logging/LogTableModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/seamless/swing/logging/LogController;->logTableModel:Lorg/seamless/swing/logging/LogTableModel;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lorg/seamless/swing/logging/LogController;)Lorg/seamless/swing/logging/LogCategorySelector;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/seamless/swing/logging/LogController;->logCategorySelector:Lorg/seamless/swing/logging/LogCategorySelector;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JLabel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/seamless/swing/logging/LogController;->pauseLabel:Ljavax/swing/JLabel;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public adjustTableUI()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->logTable:Ljavax/swing/JTable;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljavax/swing/JTable;->setFocusable(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->logTable:Ljavax/swing/JTable;

    .line 8
    .line 9
    const/16 v2, 0x12

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljavax/swing/JTable;->setRowHeight(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->logTable:Ljavax/swing/JTable;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljavax/swing/JTable;->getTableHeader()Ljavax/swing/table/JTableHeader;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, v1}, Ljavax/swing/table/JTableHeader;->setReorderingAllowed(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->logTable:Ljavax/swing/JTable;

    .line 24
    .line 25
    invoke-static {}, Ljavax/swing/BorderFactory;->createEmptyBorder()Ljavax/swing/border/Border;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Ljavax/swing/JTable;->setBorder(Ljavax/swing/border/Border;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->logTable:Ljavax/swing/JTable;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0, v1}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/16 v2, 0x1e

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljavax/swing/table/TableColumn;->setMinWidth(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->logTable:Ljavax/swing/JTable;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0, v1}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, v2}, Ljavax/swing/table/TableColumn;->setMaxWidth(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->logTable:Ljavax/swing/JTable;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0, v1}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0, v1}, Ljavax/swing/table/TableColumn;->setResizable(Z)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->logTable:Ljavax/swing/JTable;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const/4 v2, 0x1

    .line 80
    invoke-interface {v0, v2}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const/16 v3, 0x5a

    .line 85
    .line 86
    invoke-virtual {v0, v3}, Ljavax/swing/table/TableColumn;->setMinWidth(I)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->logTable:Ljavax/swing/JTable;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v0, v2}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0, v3}, Ljavax/swing/table/TableColumn;->setMaxWidth(I)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->logTable:Ljavax/swing/JTable;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-interface {v0, v2}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0, v1}, Ljavax/swing/table/TableColumn;->setResizable(Z)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->logTable:Ljavax/swing/JTable;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const/4 v1, 0x2

    .line 122
    invoke-interface {v0, v1}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const/16 v2, 0x64

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Ljavax/swing/table/TableColumn;->setMinWidth(I)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->logTable:Ljavax/swing/JTable;

    .line 132
    .line 133
    invoke-virtual {v0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-interface {v0, v1}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const/16 v1, 0xfa

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljavax/swing/table/TableColumn;->setMaxWidth(I)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->logTable:Ljavax/swing/JTable;

    .line 147
    .line 148
    invoke-virtual {v0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const/4 v1, 0x3

    .line 153
    invoke-interface {v0, v1}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const/16 v2, 0x96

    .line 158
    .line 159
    invoke-virtual {v0, v2}, Ljavax/swing/table/TableColumn;->setPreferredWidth(I)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->logTable:Ljavax/swing/JTable;

    .line 163
    .line 164
    invoke-virtual {v0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-interface {v0, v1}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const/16 v1, 0x190

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljavax/swing/table/TableColumn;->setMaxWidth(I)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->logTable:Ljavax/swing/JTable;

    .line 178
    .line 179
    invoke-virtual {v0}, Ljavax/swing/JTable;->getColumnModel()Ljavax/swing/table/TableColumnModel;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    const/4 v1, 0x4

    .line 184
    invoke-interface {v0, v1}, Ljavax/swing/table/TableColumnModel;->getColumn(I)Ljavax/swing/table/TableColumn;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    const/16 v1, 0x258

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljavax/swing/table/TableColumn;->setPreferredWidth(I)V

    .line 191
    .line 192
    .line 193
    return-void
.end method

.method public createClearButton()Ljavax/swing/JButton;
    .locals 3

    .line 1
    new-instance v0, Ljavax/swing/JButton;

    .line 2
    .line 3
    const-class v1, Lorg/seamless/swing/logging/LogController;

    .line 4
    .line 5
    const-string v2, "img/removetext.png"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lorg/seamless/swing/Application;->createImageIcon(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/ImageIcon;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "Clear Log"

    .line 12
    .line 13
    invoke-direct {v0, v2, v1}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;Ljavax/swing/Icon;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public createConfigureButton()Ljavax/swing/JButton;
    .locals 3

    .line 1
    new-instance v0, Ljavax/swing/JButton;

    .line 2
    .line 3
    const-class v1, Lorg/seamless/swing/logging/LogController;

    .line 4
    .line 5
    const-string v2, "img/configure.png"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lorg/seamless/swing/Application;->createImageIcon(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/ImageIcon;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "Options..."

    .line 12
    .line 13
    invoke-direct {v0, v2, v1}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;Ljavax/swing/Icon;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public createCopyButton()Ljavax/swing/JButton;
    .locals 3

    .line 1
    new-instance v0, Ljavax/swing/JButton;

    .line 2
    .line 3
    const-class v1, Lorg/seamless/swing/logging/LogController;

    .line 4
    .line 5
    const-string v2, "img/copyclipboard.png"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lorg/seamless/swing/Application;->createImageIcon(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/ImageIcon;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "Copy"

    .line 12
    .line 13
    invoke-direct {v0, v2, v1}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;Ljavax/swing/Icon;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public createExpandButton()Ljavax/swing/JButton;
    .locals 3

    .line 1
    new-instance v0, Ljavax/swing/JButton;

    .line 2
    .line 3
    const-class v1, Lorg/seamless/swing/logging/LogController;

    .line 4
    .line 5
    const-string v2, "img/viewtext.png"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lorg/seamless/swing/Application;->createImageIcon(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/ImageIcon;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "Expand"

    .line 12
    .line 13
    invoke-direct {v0, v2, v1}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;Ljavax/swing/Icon;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public createPauseButton()Ljavax/swing/JButton;
    .locals 3

    .line 1
    new-instance v0, Ljavax/swing/JButton;

    .line 2
    .line 3
    const-class v1, Lorg/seamless/swing/logging/LogController;

    .line 4
    .line 5
    const-string v2, "img/pause.png"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lorg/seamless/swing/Application;->createImageIcon(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/ImageIcon;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "Pause/Continue Log"

    .line 12
    .line 13
    invoke-direct {v0, v2, v1}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;Ljavax/swing/Icon;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public abstract expand(Lorg/seamless/swing/logging/LogMessage;)V
.end method

.method public getDebugIcon()Ljavax/swing/ImageIcon;
    .locals 2

    .line 1
    const-class v0, Lorg/seamless/swing/logging/LogController;

    .line 2
    .line 3
    const-string v1, "img/debug.png"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/seamless/swing/Application;->createImageIcon(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/ImageIcon;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getExpandMessageCharacterLimit()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getInfoIcon()Ljavax/swing/ImageIcon;
    .locals 2

    .line 1
    const-class v0, Lorg/seamless/swing/logging/LogController;

    .line 2
    .line 3
    const-string v1, "img/info.png"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/seamless/swing/Application;->createImageIcon(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/ImageIcon;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getLogTableModel()Lorg/seamless/swing/logging/LogTableModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->logTableModel:Lorg/seamless/swing/logging/LogTableModel;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getParentWindow()Ljava/awt/Frame;
.end method

.method public getSelectedMessages()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/seamless/swing/logging/LogMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/seamless/swing/logging/LogController;->logTable:Ljavax/swing/JTable;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljavax/swing/JTable;->getSelectedRows()[I

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    array-length v2, v1

    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    :goto_0
    if-ge v4, v2, :cond_0

    .line 16
    .line 17
    aget v5, v1, v4

    .line 18
    .line 19
    iget-object v6, p0, Lorg/seamless/swing/logging/LogController;->logTableModel:Lorg/seamless/swing/logging/LogTableModel;

    .line 20
    .line 21
    invoke-virtual {v6, v5, v3}, Lorg/seamless/swing/logging/LogTableModel;->getValueAt(II)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    check-cast v5, Lorg/seamless/swing/logging/LogMessage;

    .line 26
    .line 27
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    add-int/lit8 v4, v4, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-object v0
.end method

.method public getTraceIcon()Ljavax/swing/ImageIcon;
    .locals 2

    .line 1
    const-class v0, Lorg/seamless/swing/logging/LogController;

    .line 2
    .line 3
    const-string v1, "img/trace.png"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/seamless/swing/Application;->createImageIcon(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/ImageIcon;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getWarnErrorIcon()Ljavax/swing/ImageIcon;
    .locals 2

    .line 1
    const-class v0, Lorg/seamless/swing/logging/LogController;

    .line 2
    .line 3
    const-string v1, "img/warn.png"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/seamless/swing/Application;->createImageIcon(Ljava/lang/Class;Ljava/lang/String;)Ljavax/swing/ImageIcon;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public initializeToolBar(Lorg/seamless/swing/logging/LogController$Expiration;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->configureButton:Ljavax/swing/JButton;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setFocusable(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->configureButton:Ljavax/swing/JButton;

    .line 8
    .line 9
    new-instance v2, Lorg/seamless/swing/logging/LogController$4;

    .line 10
    .line 11
    invoke-direct {v2, p0}, Lorg/seamless/swing/logging/LogController$4;-><init>(Lorg/seamless/swing/logging/LogController;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->clearButton:Ljavax/swing/JButton;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setFocusable(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->clearButton:Ljavax/swing/JButton;

    .line 23
    .line 24
    new-instance v2, Lorg/seamless/swing/logging/LogController$5;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Lorg/seamless/swing/logging/LogController$5;-><init>(Lorg/seamless/swing/logging/LogController;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->copyButton:Ljavax/swing/JButton;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setFocusable(Z)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->copyButton:Ljavax/swing/JButton;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setEnabled(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->copyButton:Ljavax/swing/JButton;

    .line 43
    .line 44
    new-instance v2, Lorg/seamless/swing/logging/LogController$6;

    .line 45
    .line 46
    invoke-direct {v2, p0}, Lorg/seamless/swing/logging/LogController$6;-><init>(Lorg/seamless/swing/logging/LogController;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->expandButton:Ljavax/swing/JButton;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setFocusable(Z)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->expandButton:Ljavax/swing/JButton;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setEnabled(Z)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->expandButton:Ljavax/swing/JButton;

    .line 63
    .line 64
    new-instance v2, Lorg/seamless/swing/logging/LogController$7;

    .line 65
    .line 66
    invoke-direct {v2, p0}, Lorg/seamless/swing/logging/LogController$7;-><init>(Lorg/seamless/swing/logging/LogController;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->pauseButton:Ljavax/swing/JButton;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setFocusable(Z)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->pauseButton:Ljavax/swing/JButton;

    .line 78
    .line 79
    new-instance v2, Lorg/seamless/swing/logging/LogController$8;

    .line 80
    .line 81
    invoke-direct {v2, p0}, Lorg/seamless/swing/logging/LogController$8;-><init>(Lorg/seamless/swing/logging/LogController;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->expirationComboBox:Ljavax/swing/JComboBox;

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController;->expirationComboBox:Ljavax/swing/JComboBox;

    .line 93
    .line 94
    new-instance v0, Ljava/awt/Dimension;

    .line 95
    .line 96
    const/16 v2, 0x64

    .line 97
    .line 98
    const/16 v3, 0x20

    .line 99
    .line 100
    invoke-direct {v0, v2, v3}, Ljava/awt/Dimension;-><init>(II)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Ljavax/swing/JComboBox;->setMaximumSize(Ljava/awt/Dimension;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController;->expirationComboBox:Ljavax/swing/JComboBox;

    .line 107
    .line 108
    new-instance v0, Lorg/seamless/swing/logging/LogController$9;

    .line 109
    .line 110
    invoke-direct {v0, p0}, Lorg/seamless/swing/logging/LogController$9;-><init>(Lorg/seamless/swing/logging/LogController;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    .line 117
    .line 118
    invoke-virtual {p1, v1}, Ljavax/swing/JToolBar;->setFloatable(Z)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    .line 122
    .line 123
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->copyButton:Ljavax/swing/JButton;

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    .line 129
    .line 130
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->expandButton:Ljavax/swing/JButton;

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    .line 136
    .line 137
    invoke-static {}, Ljavax/swing/Box;->createHorizontalGlue()Ljava/awt/Component;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p1, v0}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    .line 145
    .line 146
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->configureButton:Ljavax/swing/JButton;

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    .line 152
    .line 153
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->clearButton:Ljavax/swing/JButton;

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    .line 159
    .line 160
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->pauseButton:Ljavax/swing/JButton;

    .line 161
    .line 162
    invoke-virtual {p1, v0}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    .line 166
    .line 167
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->pauseLabel:Ljavax/swing/JLabel;

    .line 168
    .line 169
    invoke-virtual {p1, v0}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    .line 173
    .line 174
    invoke-static {}, Ljavax/swing/Box;->createHorizontalGlue()Ljava/awt/Component;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {p1, v0}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    .line 182
    .line 183
    new-instance v0, Ljavax/swing/JLabel;

    .line 184
    .line 185
    const-string v1, "Clear after:"

    .line 186
    .line 187
    invoke-direct {v0, v1}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v0}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController;->toolBar:Ljavax/swing/JToolBar;

    .line 194
    .line 195
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController;->expirationComboBox:Ljavax/swing/JComboBox;

    .line 196
    .line 197
    invoke-virtual {p1, v0}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 198
    .line 199
    .line 200
    return-void
.end method

.method public pushMessage(Lorg/seamless/swing/logging/LogMessage;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/seamless/swing/logging/LogController$3;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/seamless/swing/logging/LogController$3;-><init>(Lorg/seamless/swing/logging/LogController;Lorg/seamless/swing/logging/LogMessage;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
