.class public Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXI/XI/K0/xo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bun/miitmdid/provider/freeme/FreemeProvider;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/bun/miitmdid/provider/freeme/FreemeProvider;

.field public final synthetic val$idSupplier:LXI/XI/K0/kM;


# direct methods
.method public constructor <init>(Lcom/bun/miitmdid/provider/freeme/FreemeProvider;LXI/XI/K0/kM;)V
    .locals 0

    iput-object p1, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->this$0:Lcom/bun/miitmdid/provider/freeme/FreemeProvider;

    iput-object p2, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->val$idSupplier:LXI/XI/K0/kM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectSuccess(Z)V
    .locals 5

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    iget-object p1, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->val$idSupplier:LXI/XI/K0/kM;

    .line 4
    .line 5
    check-cast p1, LXI/XI/K0/K0;

    .line 6
    .line 7
    invoke-virtual {p1}, LXI/XI/K0/K0;->XI()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_6

    .line 12
    .line 13
    iget-object p1, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->this$0:Lcom/bun/miitmdid/provider/freeme/FreemeProvider;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-static {p1, v0}, Lcom/bun/miitmdid/provider/freeme/FreemeProvider;->access$002(Lcom/bun/miitmdid/provider/freeme/FreemeProvider;Z)Z

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->val$idSupplier:LXI/XI/K0/kM;

    .line 20
    .line 21
    check-cast p1, LXI/XI/K0/K0;

    .line 22
    .line 23
    iget-object p1, p1, LXI/XI/K0/K0;->K0:LXI/XI/XI/XI;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    :try_start_0
    invoke-interface {p1}, LXI/XI/XI/XI;->getOAID()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    :cond_0
    move-object p1, v0

    .line 38
    :goto_0
    iget-object v1, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->val$idSupplier:LXI/XI/K0/kM;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->this$0:Lcom/bun/miitmdid/provider/freeme/FreemeProvider;

    .line 41
    .line 42
    invoke-static {v2}, Lcom/bun/miitmdid/provider/freeme/FreemeProvider;->access$100(Lcom/bun/miitmdid/provider/freeme/FreemeProvider;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    check-cast v1, LXI/XI/K0/K0;

    .line 46
    .line 47
    iget-object v1, v1, LXI/XI/K0/K0;->K0:LXI/XI/XI/XI;

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    :try_start_1
    invoke-interface {v1}, LXI/XI/XI/XI;->getVAID()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    goto :goto_1

    .line 56
    :catch_1
    move-exception v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :cond_1
    move-object v1, v0

    .line 61
    :goto_1
    iget-object v2, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->val$idSupplier:LXI/XI/K0/kM;

    .line 62
    .line 63
    iget-object v3, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->this$0:Lcom/bun/miitmdid/provider/freeme/FreemeProvider;

    .line 64
    .line 65
    invoke-static {v3}, Lcom/bun/miitmdid/provider/freeme/FreemeProvider;->access$100(Lcom/bun/miitmdid/provider/freeme/FreemeProvider;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v2, LXI/XI/K0/K0;

    .line 70
    .line 71
    iget-object v4, v2, LXI/XI/K0/K0;->K0:LXI/XI/XI/XI;

    .line 72
    .line 73
    if-eqz v4, :cond_2

    .line 74
    .line 75
    :try_start_2
    iget-object v4, v2, LXI/XI/K0/K0;->K0:LXI/XI/XI/XI;

    .line 76
    .line 77
    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    iget-object v2, v2, LXI/XI/K0/K0;->K0:LXI/XI/XI/XI;

    .line 81
    .line 82
    invoke-interface {v2, v3}, LXI/XI/XI/XI;->getAAID(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 86
    goto :goto_2

    .line 87
    :catch_2
    move-exception v2

    .line 88
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->this$0:Lcom/bun/miitmdid/provider/freeme/FreemeProvider;

    .line 92
    .line 93
    const-string v3, ""

    .line 94
    .line 95
    if-nez p1, :cond_3

    .line 96
    .line 97
    move-object p1, v3

    .line 98
    :cond_3
    invoke-static {v2, p1}, Lcom/bun/miitmdid/provider/freeme/FreemeProvider;->access$202(Lcom/bun/miitmdid/provider/freeme/FreemeProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->this$0:Lcom/bun/miitmdid/provider/freeme/FreemeProvider;

    .line 102
    .line 103
    if-nez v1, :cond_4

    .line 104
    .line 105
    move-object v1, v3

    .line 106
    :cond_4
    invoke-static {p1, v1}, Lcom/bun/miitmdid/provider/freeme/FreemeProvider;->access$302(Lcom/bun/miitmdid/provider/freeme/FreemeProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->this$0:Lcom/bun/miitmdid/provider/freeme/FreemeProvider;

    .line 110
    .line 111
    if-nez v0, :cond_5

    .line 112
    .line 113
    move-object v0, v3

    .line 114
    :cond_5
    invoke-static {p1, v0}, Lcom/bun/miitmdid/provider/freeme/FreemeProvider;->access$402(Lcom/bun/miitmdid/provider/freeme/FreemeProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->this$0:Lcom/bun/miitmdid/provider/freeme/FreemeProvider;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/bun/miitmdid/provider/BaseProvider;->returnCallResult()V

    .line 120
    .line 121
    .line 122
    :cond_6
    iget-object p1, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->val$idSupplier:LXI/XI/K0/kM;

    .line 123
    .line 124
    check-cast p1, LXI/XI/K0/K0;

    .line 125
    .line 126
    iget-object v0, p1, LXI/XI/K0/K0;->K0:LXI/XI/XI/XI;

    .line 127
    .line 128
    if-eqz v0, :cond_7

    .line 129
    .line 130
    iget-object v0, p1, LXI/XI/K0/K0;->XI:Landroid/content/Context;

    .line 131
    .line 132
    iget-object p1, p1, LXI/XI/K0/K0;->xo:Landroid/content/ServiceConnection;

    .line 133
    .line 134
    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 135
    .line 136
    .line 137
    :cond_7
    return-void
.end method
