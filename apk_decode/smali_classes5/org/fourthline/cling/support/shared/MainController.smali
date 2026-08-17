.class public abstract Lorg/fourthline/cling/support/shared/MainController;
.super Lorg/seamless/swing/AbstractController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fourthline/cling/support/shared/MainController$ShutdownWindow;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seamless/swing/AbstractController<",
        "Ljavax/swing/JFrame;",
        ">;"
    }
.end annotation


# instance fields
.field private final logController:Lorg/seamless/swing/logging/LogController;

.field private final logPanel:Ljavax/swing/JPanel;


# direct methods
.method public constructor <init>(Ljavax/swing/JFrame;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/swing/JFrame;",
            "Ljava/util/List<",
            "Lorg/seamless/swing/logging/LogCategory;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/seamless/swing/AbstractController;-><init>(Ljava/awt/Container;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Ljavax/swing/UIManager;->getSystemLookAndFeelClassName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Ljavax/swing/UIManager;->setLookAndFeel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "Unable to load native look and feel: "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    const-class p1, Lorg/fourthline/cling/support/shared/AWTExceptionHandler;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "sun.awt.exception.handler"

    .line 46
    .line 47
    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance v0, Lorg/fourthline/cling/support/shared/MainController$1;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Lorg/fourthline/cling/support/shared/MainController$1;-><init>(Lorg/fourthline/cling/support/shared/MainController;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Lorg/fourthline/cling/support/shared/MainController$2;

    .line 63
    .line 64
    invoke-direct {p1, p0, p0, p2}, Lorg/fourthline/cling/support/shared/MainController$2;-><init>(Lorg/fourthline/cling/support/shared/MainController;Lorg/seamless/swing/Controller;Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/MainController;->logController:Lorg/seamless/swing/logging/LogController;

    .line 68
    .line 69
    invoke-virtual {p1}, Lorg/seamless/swing/AbstractController;->getView()Ljava/awt/Container;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Ljavax/swing/JPanel;

    .line 74
    .line 75
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/MainController;->logPanel:Ljavax/swing/JPanel;

    .line 76
    .line 77
    const/4 p2, 0x5

    .line 78
    const/4 v0, 0x0

    .line 79
    invoke-static {p2, v0, v0, v0}, Ljavax/swing/BorderFactory;->createEmptyBorder(IIII)Ljavax/swing/border/Border;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p1, p2}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 84
    .line 85
    .line 86
    new-instance p1, Lorg/fourthline/cling/support/shared/MainController$3;

    .line 87
    .line 88
    invoke-direct {p1, p0}, Lorg/fourthline/cling/support/shared/MainController$3;-><init>(Lorg/fourthline/cling/support/shared/MainController;)V

    .line 89
    .line 90
    .line 91
    const-string p2, "java.util.logging.config.file"

    .line 92
    .line 93
    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    if-nez p2, :cond_0

    .line 98
    .line 99
    const/4 p2, 0x1

    .line 100
    new-array p2, p2, [Ljava/util/logging/Handler;

    .line 101
    .line 102
    aput-object p1, p2, v0

    .line 103
    .line 104
    invoke-static {p2}, Lorg/seamless/util/logging/LoggingUtil;->resetRootHandler([Ljava/util/logging/Handler;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_0
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    const-string v0, ""

    .line 113
    .line 114
    invoke-virtual {p2, v0}, Ljava/util/logging/LogManager;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 119
    .line 120
    .line 121
    :goto_1
    return-void
.end method

.method public static synthetic access$000(Lorg/fourthline/cling/support/shared/MainController;)Lorg/seamless/swing/logging/LogController;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/fourthline/cling/support/shared/MainController;->logController:Lorg/seamless/swing/logging/LogController;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/seamless/swing/AbstractController;->dispose()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/fourthline/cling/support/shared/MainController$ShutdownWindow;->INSTANCE:Ljavax/swing/JWindow;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Ljavax/swing/JWindow;->setVisible(Z)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lorg/fourthline/cling/support/shared/MainController$4;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lorg/fourthline/cling/support/shared/MainController$4;-><init>(Lorg/fourthline/cling/support/shared/MainController;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public getLogController()Lorg/seamless/swing/logging/LogController;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/MainController;->logController:Lorg/seamless/swing/logging/LogController;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLogPanel()Ljavax/swing/JPanel;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/MainController;->logPanel:Ljavax/swing/JPanel;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getUpnpService()Lorg/fourthline/cling/UpnpService;
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/seamless/swing/logging/LogMessage;

    invoke-direct {v0, p1, p2}, Lorg/seamless/swing/logging/LogMessage;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/shared/MainController;->log(Lorg/seamless/swing/logging/LogMessage;)V

    return-void
.end method

.method public log(Lorg/seamless/swing/logging/LogMessage;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/fourthline/cling/support/shared/MainController;->getLogController()Lorg/seamless/swing/logging/LogController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/seamless/swing/logging/LogController;->pushMessage(Lorg/seamless/swing/logging/LogMessage;)V

    return-void
.end method
