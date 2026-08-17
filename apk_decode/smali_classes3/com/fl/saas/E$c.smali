.class public Lcom/fl/saas/E$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/E;


# direct methods
.method public constructor <init>(Lcom/fl/saas/E;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/E$c;->a:Lcom/fl/saas/E;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "downLoadUrl"

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_4

    .line 18
    .line 19
    sget-object v0, Lcom/fl/saas/E;->s:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/fl/saas/E$c;->a:Lcom/fl/saas/E;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/fl/saas/E;->c(Lcom/fl/saas/E;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    iget-object p1, p0, Lcom/fl/saas/E$c;->a:Lcom/fl/saas/E;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/fl/saas/E;->f()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    sget-object v0, Lcom/fl/saas/E;->t:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/fl/saas/E$c;->a:Lcom/fl/saas/E;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/fl/saas/E;->c(Lcom/fl/saas/E;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    iget-object p1, p0, Lcom/fl/saas/E$c;->a:Lcom/fl/saas/E;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/fl/saas/E;->e()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    sget-object v0, Lcom/fl/saas/E;->u:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    iget-object p1, p0, Lcom/fl/saas/E$c;->a:Lcom/fl/saas/E;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/fl/saas/E;->c(Lcom/fl/saas/E;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    iget-object p1, p0, Lcom/fl/saas/E$c;->a:Lcom/fl/saas/E;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/fl/saas/E;->a(Lcom/fl/saas/E;)Lcom/fl/saas/E$d;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-eqz p1, :cond_3

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    sget-object p2, Lcom/fl/saas/E;->w:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_4

    .line 107
    .line 108
    iget-object p1, p0, Lcom/fl/saas/E$c;->a:Lcom/fl/saas/E;

    .line 109
    .line 110
    invoke-static {p1}, Lcom/fl/saas/E;->a(Lcom/fl/saas/E;)Lcom/fl/saas/E$d;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-eqz p1, :cond_3

    .line 115
    .line 116
    :goto_0
    iget-object p1, p0, Lcom/fl/saas/E$c;->a:Lcom/fl/saas/E;

    .line 117
    .line 118
    invoke-static {p1}, Lcom/fl/saas/E;->a(Lcom/fl/saas/E;)Lcom/fl/saas/E$d;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-interface {p1}, Lcom/fl/saas/E$d;->onCancel()V

    .line 123
    .line 124
    .line 125
    :cond_3
    iget-object p1, p0, Lcom/fl/saas/E$c;->a:Lcom/fl/saas/E;

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/fl/saas/E;->b()V

    .line 128
    .line 129
    .line 130
    :cond_4
    return-void
.end method
