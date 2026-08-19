.class public Lcom/meishu/sdk/core/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/utils/d$b;
    }
.end annotation


# static fields
.field public static final synthetic n:I


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/meishu/sdk/core/utils/PackageBean;

.field public d:Lcom/meishu/sdk/core/utils/PackageBean;

.field public e:I

.field public f:J

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public volatile l:Z

.field public final m:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/d;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/meishu/sdk/core/utils/d;->l:Z

    .line 20
    .line 21
    new-instance v0, Ljava/lang/Object;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/d;->m:Ljava/lang/Object;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a()Lcom/meishu/sdk/core/utils/PackageBean;
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/d;->d:Lcom/meishu/sdk/core/utils/PackageBean;

    if-eqz v0, :cond_0

    return-object v0

    .line 113
    :cond_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "packageKey"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/meishu/sdk/core/utils/d;->d:Lcom/meishu/sdk/core/utils/PackageBean;

    goto :goto_0

    .line 116
    :cond_1
    sget-object v1, Lcom/meishu/sdk/core/utils/v;->a:Lcom/google/gson/Gson;

    const-class v2, Lcom/meishu/sdk/core/utils/PackageBean;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/utils/PackageBean;

    iput-object v0, p0, Lcom/meishu/sdk/core/utils/d;->d:Lcom/meishu/sdk/core/utils/PackageBean;

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/d;->d:Lcom/meishu/sdk/core/utils/PackageBean;

    return-object v0
.end method

.method public final a(Lcom/meishu/sdk/core/utils/PackageBean$AppBean;)V
    .locals 6

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/meishu/sdk/core/utils/d;->a()Lcom/meishu/sdk/core/utils/PackageBean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 87
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/PackageBean;->getApp()Lcom/meishu/sdk/core/utils/PackageBean$AppBean;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 88
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 89
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/PackageBean;->getApp()Lcom/meishu/sdk/core/utils/PackageBean$AppBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->getRequired()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 90
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 91
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;

    .line 92
    invoke-virtual {v3}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {v3}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    :cond_3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/PackageBean;->getApp()Lcom/meishu/sdk/core/utils/PackageBean$AppBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->getOthers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 95
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;

    .line 97
    invoke-virtual {v2}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 98
    :cond_4
    invoke-virtual {v2}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    :goto_2
    const/4 v1, 0x0

    :cond_6
    if-eqz v1, :cond_b

    .line 99
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_5

    .line 100
    :cond_7
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->getRequired()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;

    .line 102
    invoke-virtual {v2}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;

    if-nez v3, :cond_8

    goto :goto_3

    .line 103
    :cond_8
    invoke-virtual {v3}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getInstalled()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->setInstalled(Z)V

    .line 104
    invoke-virtual {v3}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getLastCheckTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->setLastCheckTime(J)V

    .line 105
    invoke-virtual {v3}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getExpirationTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->setExpirationTime(J)V

    goto :goto_3

    .line 106
    :cond_9
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->getOthers()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;

    .line 108
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;

    if-nez v2, :cond_a

    goto :goto_4

    .line 109
    :cond_a
    invoke-virtual {v2}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getInstalled()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->setInstalled(Z)V

    .line 110
    invoke-virtual {v2}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getLastCheckTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->setLastCheckTime(J)V

    .line 111
    invoke-virtual {v2}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getExpirationTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->setExpirationTime(J)V

    goto :goto_4

    :cond_b
    :goto_5
    return-void
.end method

.method public final a(Lcom/meishu/sdk/core/utils/PackageBean;)V
    .locals 11

    if-nez p1, :cond_2

    .line 43
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_b

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/meishu/sdk/core/utils/d;->a()Lcom/meishu/sdk/core/utils/PackageBean;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_b

    .line 45
    :cond_1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/d;->c:Lcom/meishu/sdk/core/utils/PackageBean;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    .line 46
    :cond_2
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/d;->c:Lcom/meishu/sdk/core/utils/PackageBean;

    .line 47
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getApp()Lcom/meishu/sdk/core/utils/PackageBean$AppBean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/core/utils/d;->a(Lcom/meishu/sdk/core/utils/PackageBean$AppBean;)V

    .line 48
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/d;->c:Lcom/meishu/sdk/core/utils/PackageBean;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getApp()Lcom/meishu/sdk/core/utils/PackageBean$AppBean;

    move-result-object p1

    if-nez p1, :cond_3

    goto/16 :goto_9

    .line 49
    :cond_3
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/d;->c:Lcom/meishu/sdk/core/utils/PackageBean;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getApp()Lcom/meishu/sdk/core/utils/PackageBean$AppBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->getTtl()Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 50
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_4
    move p1, v0

    .line 51
    :goto_1
    iput p1, p0, Lcom/meishu/sdk/core/utils/d;->e:I

    .line 52
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/d;->c:Lcom/meishu/sdk/core/utils/PackageBean;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getApp()Lcom/meishu/sdk/core/utils/PackageBean$AppBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->getA()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 53
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_5
    const/16 p1, 0xa

    .line 54
    :goto_2
    iput p1, p0, Lcom/meishu/sdk/core/utils/d;->h:I

    .line 55
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/d;->c:Lcom/meishu/sdk/core/utils/PackageBean;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getApp()Lcom/meishu/sdk/core/utils/PackageBean$AppBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->getB()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 56
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_3

    :cond_6
    const/4 p1, 0x5

    .line 57
    :goto_3
    iput p1, p0, Lcom/meishu/sdk/core/utils/d;->g:I

    .line 58
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/d;->c:Lcom/meishu/sdk/core/utils/PackageBean;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getApp()Lcom/meishu/sdk/core/utils/PackageBean$AppBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->getC()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 59
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4

    :cond_7
    const/16 p1, 0xc8

    .line 60
    :goto_4
    iput p1, p0, Lcom/meishu/sdk/core/utils/d;->k:I

    .line 61
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/d;->c:Lcom/meishu/sdk/core/utils/PackageBean;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getApp()Lcom/meishu/sdk/core/utils/PackageBean$AppBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->getD()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 62
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_5

    :cond_8
    const p1, 0x493e0

    .line 63
    :goto_5
    iput p1, p0, Lcom/meishu/sdk/core/utils/d;->i:I

    .line 64
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/d;->c:Lcom/meishu/sdk/core/utils/PackageBean;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getApp()Lcom/meishu/sdk/core/utils/PackageBean$AppBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->getE()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 65
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_6

    :cond_9
    move p1, v0

    .line 66
    :goto_6
    iput p1, p0, Lcom/meishu/sdk/core/utils/d;->j:I

    .line 67
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/d;->c:Lcom/meishu/sdk/core/utils/PackageBean;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getApp()Lcom/meishu/sdk/core/utils/PackageBean$AppBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->getRequired()Ljava/util/List;

    move-result-object p1

    .line 68
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/d;->c:Lcom/meishu/sdk/core/utils/PackageBean;

    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/PackageBean;->getApp()Lcom/meishu/sdk/core/utils/PackageBean$AppBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->getOthers()Ljava/util/List;

    move-result-object v1

    .line 69
    iget-object v2, p0, Lcom/meishu/sdk/core/utils/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 70
    iget-object v2, p0, Lcom/meishu/sdk/core/utils/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    if-eqz p1, :cond_a

    .line 71
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 72
    iget-object v2, p0, Lcom/meishu/sdk/core/utils/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_a
    if-eqz v1, :cond_b

    .line 73
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    .line 74
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 75
    :cond_b
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :catchall_1
    :cond_c
    :goto_7
    if-ge v0, v1, :cond_10

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;

    const-wide/16 v3, 0x0

    if-nez v2, :cond_d

    goto :goto_8

    .line 76
    :cond_d
    invoke-virtual {v2}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getExpirationTime()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-nez v5, :cond_e

    invoke-virtual {v2}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getLastCheckTime()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_e

    .line 77
    invoke-virtual {v2}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getLastCheckTime()J

    move-result-wide v5

    iget v7, p0, Lcom/meishu/sdk/core/utils/d;->e:I

    int-to-long v7, v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    add-long/2addr v7, v5

    invoke-virtual {v2, v7, v8}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->setExpirationTime(J)V

    .line 78
    :cond_e
    :goto_8
    invoke-virtual {v2}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 79
    invoke-virtual {v2}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getLastCheckTime()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-gtz v5, :cond_f

    invoke-virtual {v2}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getExpirationTime()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, v5, v3

    if-lez v3, :cond_c

    .line 80
    :cond_f
    :try_start_1
    iget-object v3, p0, Lcom/meishu/sdk/core/utils/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getInstalled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    .line 81
    :cond_10
    :try_start_2
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/d;->a:Ljava/util/ArrayList;

    if-eqz p1, :cond_13

    .line 82
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_b

    .line 83
    :cond_11
    new-instance v0, Lcom/meishu/sdk/core/utils/e;

    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/utils/e;-><init>(Lcom/meishu/sdk/core/utils/d;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_b

    .line 84
    :cond_12
    :goto_9
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/d;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 85
    :goto_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    :goto_b
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/meishu/sdk/core/utils/h0;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    sget-object p1, Lcom/meishu/sdk/core/utils/h0$b;->a:Lcom/meishu/sdk/core/utils/h0;

    .line 3
    new-instance v0, Lcom/meishu/sdk/core/utils/d$a;

    invoke-direct {v0, p0, p2}, Lcom/meishu/sdk/core/utils/d$a;-><init>(Lcom/meishu/sdk/core/utils/d;Z)V

    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/utils/h0;->a(Ljava/lang/Runnable;)Z

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/meishu/sdk/core/utils/d;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/meishu/sdk/core/utils/d;->c:Lcom/meishu/sdk/core/utils/PackageBean;

    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/r0;->a(Landroid/content/Context;Lcom/meishu/sdk/core/utils/PackageBean;)V

    :cond_1
    return-void
.end method

.method public final a(Z)Z
    .locals 9

    const/4 v0, 0x0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/d;->m:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v2, 0x0

    .line 8
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/meishu/sdk/core/utils/d;->a(Lcom/meishu/sdk/core/utils/PackageBean;)V

    .line 9
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 10
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    const-string p1, "d"

    const-string v1, "finalList is empty"

    invoke-static {p1, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 12
    iput-boolean v0, p0, Lcom/meishu/sdk/core/utils/d;->l:Z

    return v0

    .line 13
    :cond_1
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/meishu/sdk/core/utils/d;->f:J

    sub-long/2addr v1, v3

    iget v3, p0, Lcom/meishu/sdk/core/utils/d;->i:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 14
    const-string p1, "d"

    const-string v1, "time interval too close"

    invoke-static {p1, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 15
    iput-boolean v0, p0, Lcom/meishu/sdk/core/utils/d;->l:Z

    return v0

    :cond_2
    if-eqz p1, :cond_3

    .line 16
    :try_start_4
    iget v1, p0, Lcom/meishu/sdk/core/utils/d;->h:I

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/meishu/sdk/core/utils/d;->g:I

    :goto_1
    if-gtz v1, :cond_4

    .line 17
    const-string v1, "d"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no check PackBean. isInit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 18
    iput-boolean v0, p0, Lcom/meishu/sdk/core/utils/d;->l:Z

    return v0

    .line 19
    :cond_4
    :try_start_5
    iget-boolean p1, p0, Lcom/meishu/sdk/core/utils/d;->l:Z

    if-eqz p1, :cond_5

    .line 20
    const-string p1, "d"

    const-string v1, "isChecking. no check PackBean."

    invoke-static {p1, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 21
    iput-boolean v0, p0, Lcom/meishu/sdk/core/utils/d;->l:Z

    return v0

    :cond_5
    const/4 p1, 0x1

    .line 22
    :try_start_6
    iput-boolean p1, p0, Lcom/meishu/sdk/core/utils/d;->l:Z

    .line 23
    iget-object v2, p0, Lcom/meishu/sdk/core/utils/d;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    .line 24
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    .line 25
    :cond_6
    new-instance v3, Lcom/meishu/sdk/core/utils/e;

    invoke-direct {v3, p0}, Lcom/meishu/sdk/core/utils/e;-><init>(Lcom/meishu/sdk/core/utils/d;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 26
    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/meishu/sdk/core/utils/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    move v5, v4

    :catch_0
    :cond_8
    :goto_3
    if-ge v5, v3, :cond_b

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;

    .line 27
    iget v7, p0, Lcom/meishu/sdk/core/utils/d;->j:I

    if-nez v7, :cond_9

    invoke-static {}, Lcom/meishu/sdk/core/service/d;->a()Z

    move-result v7

    if-nez v7, :cond_9

    .line 28
    const-string v1, "d"

    const-string v2, "app background, no check PackBean"

    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 29
    :cond_9
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/meishu/sdk/core/utils/d;->e:I

    invoke-static {v7, v8, v6}, Lcom/meishu/sdk/core/utils/r0;->a(Landroid/content/Context;ILcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;)Z

    move-result v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v7, :cond_8

    .line 30
    :try_start_7
    iget-object v7, p0, Lcom/meishu/sdk/core/utils/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;->getInstalled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v1, :cond_a

    goto :goto_4

    .line 31
    :cond_a
    :try_start_8
    iget v6, p0, Lcom/meishu/sdk/core/utils/d;->k:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-lez v6, :cond_8

    int-to-long v6, v6

    .line 32
    :try_start_9
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :cond_b
    :goto_4
    if-nez v4, :cond_c

    .line 33
    :try_start_a
    const-string p1, "d"

    const-string v1, "checkCount zero."

    invoke-static {p1, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 34
    iput-boolean v0, p0, Lcom/meishu/sdk/core/utils/d;->l:Z

    return v0

    .line 35
    :cond_c
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/meishu/sdk/core/utils/d;->f:J

    .line 36
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/d;->m:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 37
    :try_start_c
    sget-object v2, Lcom/meishu/sdk/core/utils/v;->a:Lcom/google/gson/Gson;

    iget-object v3, p0, Lcom/meishu/sdk/core/utils/d;->c:Lcom/meishu/sdk/core/utils/PackageBean;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 38
    :try_start_d
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "packageKey"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p1

    goto :goto_6

    .line 39
    :catch_1
    :goto_5
    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 40
    iput-boolean v0, p0, Lcom/meishu/sdk/core/utils/d;->l:Z

    return p1

    .line 41
    :goto_6
    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    throw p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 42
    :catchall_3
    iput-boolean v0, p0, Lcom/meishu/sdk/core/utils/d;->l:Z

    return v0
.end method
