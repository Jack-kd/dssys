.class public Lcom/meishu/sdk/core/utils/m0$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/m0;-><init>(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/utils/m0;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/m0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/m0$a;->a:Lcom/meishu/sdk/core/utils/m0;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/core/safe/l;->safeRun()V

    .line 2
    .line 3
    .line 4
    const-string v0, "dialog state 0 \uff1a"

    .line 5
    .line 6
    invoke-static {v0}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/m0$a;->a:Lcom/meishu/sdk/core/utils/m0;

    .line 11
    .line 12
    iget-wide v1, v1, Lcom/meishu/sdk/core/utils/m0;->b:J

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/meishu/sdk/core/service/d;->a()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "OpenAppDialogStateChecker"

    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/m0$a;->a:Lcom/meishu/sdk/core/utils/m0;

    .line 39
    .line 40
    iget-wide v2, v0, Lcom/meishu/sdk/core/utils/m0;->b:J

    .line 41
    .line 42
    const-wide/16 v4, 0x0

    .line 43
    .line 44
    cmp-long v0, v2, v4

    .line 45
    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    const-string v0, "dialog state 1"

    .line 49
    .line 50
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/m0$a;->a:Lcom/meishu/sdk/core/utils/m0;

    .line 54
    .line 55
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 56
    .line 57
    iput-object v1, v0, Lcom/meishu/sdk/core/utils/m0;->f:Ljava/lang/Boolean;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/m0$a;->a:Lcom/meishu/sdk/core/utils/m0;

    .line 60
    .line 61
    iget-object v1, v0, Lcom/meishu/sdk/core/utils/m0;->f:Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/m0;->a(Lcom/meishu/sdk/core/utils/m0;Z)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    if-lez v0, :cond_2

    .line 72
    .line 73
    invoke-static {}, Lcom/meishu/sdk/core/service/d;->a()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_1

    .line 78
    .line 79
    const-string v0, "dialog state 2"

    .line 80
    .line 81
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/m0$a;->a:Lcom/meishu/sdk/core/utils/m0;

    .line 85
    .line 86
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 87
    .line 88
    iput-object v1, v0, Lcom/meishu/sdk/core/utils/m0;->f:Ljava/lang/Boolean;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/m0$a;->a:Lcom/meishu/sdk/core/utils/m0;

    .line 91
    .line 92
    iget-object v1, v0, Lcom/meishu/sdk/core/utils/m0;->f:Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/m0;->a(Lcom/meishu/sdk/core/utils/m0;Z)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/m0$a;->a:Lcom/meishu/sdk/core/utils/m0;

    .line 103
    .line 104
    const/4 v1, 0x1

    .line 105
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/m0;->b(Lcom/meishu/sdk/core/utils/m0;Z)Z

    .line 106
    .line 107
    .line 108
    :cond_2
    return-void
.end method
