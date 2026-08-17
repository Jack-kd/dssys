.class Lorg/fourthline/cling/support/shared/Main$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fourthline/cling/support/shared/Main;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fourthline/cling/support/shared/Main;

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/support/shared/Main;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/fourthline/cling/support/shared/Main$5;->this$0:Lorg/fourthline/cling/support/shared/Main;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/fourthline/cling/support/shared/Main$5;->val$throwable:Ljava/lang/Throwable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/Main$5;->this$0:Lorg/fourthline/cling/support/shared/Main;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/fourthline/cling/support/shared/Main;->errorWindow:Ljavax/swing/JFrame;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/awt/Container;->removeAll()V

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljavax/swing/JTextArea;

    .line 13
    .line 14
    invoke-direct {v0}, Ljavax/swing/JTextArea;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setEditable(Z)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "An exceptional error occurred!\nYou can try to continue or exit the application.\n\n"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, "Please tell us about this here:\nhttp://www.4thline.org/projects/mailinglists-cling.html\n\n"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v3, "-------------------------------------------------------------------------------------------------------------\n\n"

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    new-instance v3, Ljava/io/StringWriter;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v4, p0, Lorg/fourthline/cling/support/shared/Main$5;->val$throwable:Ljava/lang/Throwable;

    .line 47
    .line 48
    new-instance v5, Ljava/io/PrintWriter;

    .line 49
    .line 50
    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v0, v2}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance v2, Ljavax/swing/JScrollPane;

    .line 71
    .line 72
    invoke-direct {v2, v0}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 73
    .line 74
    .line 75
    iget-object v3, p0, Lorg/fourthline/cling/support/shared/Main$5;->this$0:Lorg/fourthline/cling/support/shared/Main;

    .line 76
    .line 77
    iget-object v3, v3, Lorg/fourthline/cling/support/shared/Main;->errorWindow:Ljavax/swing/JFrame;

    .line 78
    .line 79
    invoke-virtual {v3}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const-string v4, "Center"

    .line 84
    .line 85
    invoke-virtual {v3, v2, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    new-instance v2, Ljavax/swing/JButton;

    .line 89
    .line 90
    const-string v3, "Exit Application"

    .line 91
    .line 92
    invoke-direct {v2, v3}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance v3, Lorg/fourthline/cling/support/shared/Main$5$1;

    .line 96
    .line 97
    invoke-direct {v3, p0}, Lorg/fourthline/cling/support/shared/Main$5$1;-><init>(Lorg/fourthline/cling/support/shared/Main$5;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v3}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 101
    .line 102
    .line 103
    iget-object v3, p0, Lorg/fourthline/cling/support/shared/Main$5;->this$0:Lorg/fourthline/cling/support/shared/Main;

    .line 104
    .line 105
    iget-object v3, v3, Lorg/fourthline/cling/support/shared/Main;->errorWindow:Ljavax/swing/JFrame;

    .line 106
    .line 107
    invoke-virtual {v3}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    const-string v4, "South"

    .line 112
    .line 113
    invoke-virtual {v3, v2, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object v2, p0, Lorg/fourthline/cling/support/shared/Main$5;->this$0:Lorg/fourthline/cling/support/shared/Main;

    .line 117
    .line 118
    iget-object v2, v2, Lorg/fourthline/cling/support/shared/Main;->errorWindow:Ljavax/swing/JFrame;

    .line 119
    .line 120
    invoke-virtual {v2}, Ljavax/swing/JFrame;->pack()V

    .line 121
    .line 122
    .line 123
    iget-object v2, p0, Lorg/fourthline/cling/support/shared/Main$5;->this$0:Lorg/fourthline/cling/support/shared/Main;

    .line 124
    .line 125
    iget-object v2, v2, Lorg/fourthline/cling/support/shared/Main;->errorWindow:Ljavax/swing/JFrame;

    .line 126
    .line 127
    invoke-static {v2}, Lorg/seamless/swing/Application;->center(Ljava/awt/Window;)Ljava/awt/Window;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setCaretPosition(I)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lorg/fourthline/cling/support/shared/Main$5;->this$0:Lorg/fourthline/cling/support/shared/Main;

    .line 134
    .line 135
    iget-object v0, v0, Lorg/fourthline/cling/support/shared/Main;->errorWindow:Ljavax/swing/JFrame;

    .line 136
    .line 137
    const/4 v1, 0x1

    .line 138
    invoke-virtual {v0, v1}, Ljavax/swing/JFrame;->setVisible(Z)V

    .line 139
    .line 140
    .line 141
    return-void
.end method
