.class Lorg/seamless/swing/logging/LogController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/swing/event/ListSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/seamless/swing/logging/LogController;-><init>(Lorg/seamless/swing/Controller;Lorg/seamless/swing/logging/LogController$Expiration;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/seamless/swing/logging/LogController;


# direct methods
.method public constructor <init>(Lorg/seamless/swing/logging/LogController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/seamless/swing/logging/LogController$2;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getValueIsAdjusting()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getSource()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$2;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 14
    .line 15
    invoke-static {v0}, Lorg/seamless/swing/logging/LogController;->access$000(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JTable;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljavax/swing/JTable;->getSelectionModel()Ljavax/swing/ListSelectionModel;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-ne p1, v0, :cond_5

    .line 24
    .line 25
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController$2;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 26
    .line 27
    invoke-static {p1}, Lorg/seamless/swing/logging/LogController;->access$000(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JTable;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljavax/swing/JTable;->getSelectedRows()[I

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v0, 0x0

    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    array-length v1, p1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    array-length v1, p1

    .line 43
    const/4 v2, 0x1

    .line 44
    if-ne v1, v2, :cond_3

    .line 45
    .line 46
    iget-object v1, p0, Lorg/seamless/swing/logging/LogController$2;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 47
    .line 48
    invoke-static {v1}, Lorg/seamless/swing/logging/LogController;->access$100(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JButton;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->setEnabled(Z)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lorg/seamless/swing/logging/LogController$2;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 56
    .line 57
    invoke-static {v1}, Lorg/seamless/swing/logging/LogController;->access$300(Lorg/seamless/swing/logging/LogController;)Lorg/seamless/swing/logging/LogTableModel;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    aget p1, p1, v0

    .line 62
    .line 63
    invoke-virtual {v1, p1, v0}, Lorg/seamless/swing/logging/LogTableModel;->getValueAt(II)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lorg/seamless/swing/logging/LogMessage;

    .line 68
    .line 69
    invoke-virtual {p1}, Lorg/seamless/swing/logging/LogMessage;->getMessage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iget-object v1, p0, Lorg/seamless/swing/logging/LogController$2;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 78
    .line 79
    invoke-virtual {v1}, Lorg/seamless/swing/logging/LogController;->getExpandMessageCharacterLimit()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-le p1, v1, :cond_2

    .line 84
    .line 85
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController$2;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 86
    .line 87
    invoke-static {p1}, Lorg/seamless/swing/logging/LogController;->access$200(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JButton;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1, v2}, Ljavax/swing/JButton;->setEnabled(Z)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_2
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController$2;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 96
    .line 97
    invoke-static {p1}, Lorg/seamless/swing/logging/LogController;->access$200(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JButton;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1, v0}, Ljavax/swing/JButton;->setEnabled(Z)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_3
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController$2;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 106
    .line 107
    invoke-static {p1}, Lorg/seamless/swing/logging/LogController;->access$100(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JButton;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1, v2}, Ljavax/swing/JButton;->setEnabled(Z)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController$2;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 115
    .line 116
    invoke-static {p1}, Lorg/seamless/swing/logging/LogController;->access$200(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JButton;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1, v0}, Ljavax/swing/JButton;->setEnabled(Z)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController$2;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 125
    .line 126
    invoke-static {p1}, Lorg/seamless/swing/logging/LogController;->access$100(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JButton;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1, v0}, Ljavax/swing/JButton;->setEnabled(Z)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController$2;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 134
    .line 135
    invoke-static {p1}, Lorg/seamless/swing/logging/LogController;->access$200(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JButton;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1, v0}, Ljavax/swing/JButton;->setEnabled(Z)V

    .line 140
    .line 141
    .line 142
    :cond_5
    :goto_1
    return-void
.end method
