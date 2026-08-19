.class public Lcom/baidu/mobads/sdk/api/CpuChannelListManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobads/sdk/api/CpuChannelListManager$CpuChannelListListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CpuChannelListManager"


# instance fields
.field private mCPUChannelListProd:Lcom/baidu/mobads/sdk/internal/o;

.field private mChannelIdListListener:Lcom/baidu/mobads/sdk/api/CpuChannelListManager$CpuChannelListListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mobads/sdk/api/CpuChannelListManager$CpuChannelListListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/baidu/mobads/sdk/internal/o;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/baidu/mobads/sdk/internal/o;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/baidu/mobads/sdk/api/CpuChannelListManager;->mCPUChannelListProd:Lcom/baidu/mobads/sdk/internal/o;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/baidu/mobads/sdk/api/CpuChannelListManager;->mChannelIdListListener:Lcom/baidu/mobads/sdk/api/CpuChannelListManager$CpuChannelListListener;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lcom/baidu/mobads/sdk/internal/o;->a(Lcom/baidu/mobads/sdk/api/CpuChannelListManager$CpuChannelListListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public loadChannelList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object p2, Lcom/baidu/mobads/sdk/api/CpuChannelListManager;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "SubChannelId is null!"

    .line 14
    .line 15
    filled-new-array {p2, v0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/CpuChannelListManager;->mChannelIdListListener:Lcom/baidu/mobads/sdk/api/CpuChannelListManager$CpuChannelListListener;

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    sget-object p2, Lcom/baidu/mobads/sdk/internal/br;->a:Lcom/baidu/mobads/sdk/internal/br;

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/baidu/mobads/sdk/internal/br;->b()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    const-string v0, "SubChannelId is null."

    .line 33
    .line 34
    invoke-interface {p1, v0, p2}, Lcom/baidu/mobads/sdk/api/CpuChannelListManager$CpuChannelListListener;->onChannelListError(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sget-object p2, Lcom/baidu/mobads/sdk/api/CpuChannelListManager;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    const-string v0, "appsid is null!"

    .line 51
    .line 52
    filled-new-array {p2, v0}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/CpuChannelListManager;->mChannelIdListListener:Lcom/baidu/mobads/sdk/api/CpuChannelListManager$CpuChannelListListener;

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    sget-object p2, Lcom/baidu/mobads/sdk/internal/br;->a:Lcom/baidu/mobads/sdk/internal/br;

    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/baidu/mobads/sdk/internal/br;->b()I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    const-string v0, "appsid is null."

    .line 70
    .line 71
    invoke-interface {p1, v0, p2}, Lcom/baidu/mobads/sdk/api/CpuChannelListManager$CpuChannelListListener;->onChannelListError(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    iget-object v0, p0, Lcom/baidu/mobads/sdk/api/CpuChannelListManager;->mCPUChannelListProd:Lcom/baidu/mobads/sdk/internal/o;

    .line 80
    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobads/sdk/internal/o;->a(Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/CpuChannelListManager;->mCPUChannelListProd:Lcom/baidu/mobads/sdk/internal/o;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/internal/o;->a()V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :catch_0
    invoke-static {}, Lcom/baidu/mobads/sdk/internal/bv;->a()Lcom/baidu/mobads/sdk/internal/bv;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    sget-object p2, Lcom/baidu/mobads/sdk/api/CpuChannelListManager;->TAG:Ljava/lang/String;

    .line 97
    .line 98
    const-string v0, "SubChannelId is not Integer!"

    .line 99
    .line 100
    filled-new-array {p2, v0}, [Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/internal/bv;->c([Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/CpuChannelListManager;->mChannelIdListListener:Lcom/baidu/mobads/sdk/api/CpuChannelListManager$CpuChannelListListener;

    .line 108
    .line 109
    if-eqz p1, :cond_2

    .line 110
    .line 111
    iget-object p1, p0, Lcom/baidu/mobads/sdk/api/CpuChannelListManager;->mChannelIdListListener:Lcom/baidu/mobads/sdk/api/CpuChannelListManager$CpuChannelListListener;

    .line 112
    .line 113
    sget-object p2, Lcom/baidu/mobads/sdk/internal/br;->a:Lcom/baidu/mobads/sdk/internal/br;

    .line 114
    .line 115
    invoke-virtual {p2}, Lcom/baidu/mobads/sdk/internal/br;->b()I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    invoke-interface {p1, v0, p2}, Lcom/baidu/mobads/sdk/api/CpuChannelListManager$CpuChannelListListener;->onChannelListError(Ljava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    :cond_2
    return-void
.end method
