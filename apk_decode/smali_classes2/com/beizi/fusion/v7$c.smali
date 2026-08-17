.class Lcom/beizi/fusion/v7$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/o2$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/v7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/v7;


# direct methods
.method private constructor <init>(Lcom/beizi/fusion/v7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/v7$c;->a:Lcom/beizi/fusion/v7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/beizi/fusion/v7;Lcom/beizi/fusion/v7$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/fusion/v7$c;-><init>(Lcom/beizi/fusion/v7;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/beizi/fusion/asnp/common/analyse2/base/model/init/AnalyseEventModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/beizi/fusion/fn;->a()Lcom/beizi/fusion/fn;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/beizi/fusion/v7$c;->a:Lcom/beizi/fusion/v7;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/beizi/fusion/v7;->a(Lcom/beizi/fusion/v7;)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/x9;->b(Landroid/content/Context;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/beizi/fusion/hb;

    .line 16
    .line 17
    new-instance v1, Lcom/beizi/fusion/r2;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/beizi/fusion/v7$c;->a:Lcom/beizi/fusion/v7;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/beizi/fusion/v7;->a(Lcom/beizi/fusion/v7;)Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p0, Lcom/beizi/fusion/v7$c;->a:Lcom/beizi/fusion/v7;

    .line 26
    .line 27
    invoke-static {v3}, Lcom/beizi/fusion/v7;->b(Lcom/beizi/fusion/v7;)Lcom/beizi/fusion/la;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v4, p0, Lcom/beizi/fusion/v7$c;->a:Lcom/beizi/fusion/v7;

    .line 32
    .line 33
    invoke-static {v4}, Lcom/beizi/fusion/v7;->c(Lcom/beizi/fusion/v7;)Lcom/beizi/fusion/q2;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-direct {v1, v2, v3, v4}, Lcom/beizi/fusion/r2;-><init>(Landroid/content/Context;Lcom/beizi/fusion/la;Lcom/beizi/fusion/q2;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/common/analyse2/base/model/init/AnalyseEventModel;->e()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p2}, Lcom/beizi/fusion/asnp/common/analyse2/base/model/init/AnalyseEventModel;->a()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {v1, v2, p4, p2, p3}, Lcom/beizi/fusion/r2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Lcom/beizi/fusion/r2;->d(Ljava/util/List;)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Lcom/beizi/fusion/v7$c$a;

    .line 55
    .line 56
    invoke-direct {p1, p0}, Lcom/beizi/fusion/v7$c$a;-><init>(Lcom/beizi/fusion/v7$c;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p1}, Lcom/beizi/fusion/r2;->a(Lcom/beizi/fusion/r2$b;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v1}, Lcom/beizi/fusion/hb;->d(Ljava/lang/Runnable;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
