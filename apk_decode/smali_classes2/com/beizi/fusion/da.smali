.class public abstract Lcom/beizi/fusion/da;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/fusion/da$d;,
        Lcom/beizi/fusion/da$b;,
        Lcom/beizi/fusion/da$c;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:I

.field protected final c:[F

.field protected final d:J

.field protected final e:Lcom/beizi/fusion/d;

.field protected final f:Lcom/beizi/fusion/om;

.field private final g:Ljava/util/List;

.field private final h:Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/render/ScopeVideoView$d;

.field private final i:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/da$d;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/beizi/fusion/da$d;->a(Lcom/beizi/fusion/da$d;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/beizi/fusion/da;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/beizi/fusion/da$d;->b(Lcom/beizi/fusion/da$d;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/beizi/fusion/da;->b:I

    .line 15
    .line 16
    invoke-static {p1}, Lcom/beizi/fusion/da$d;->e(Lcom/beizi/fusion/da$d;)[F

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/beizi/fusion/da;->c:[F

    .line 21
    .line 22
    invoke-static {p1}, Lcom/beizi/fusion/da$d;->f(Lcom/beizi/fusion/da$d;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Lcom/beizi/fusion/da;->d:J

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/beizi/fusion/da$d;->a()Lcom/beizi/fusion/d;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/beizi/fusion/da;->e:Lcom/beizi/fusion/d;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/beizi/fusion/da$d;->g(Lcom/beizi/fusion/da$d;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/beizi/fusion/da;->g:Ljava/util/List;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/beizi/fusion/da$d;->h(Lcom/beizi/fusion/da$d;)Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    new-instance v0, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/beizi/fusion/da$d;->h(Lcom/beizi/fusion/da$d;)Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/beizi/fusion/da;->i:Ljava/util/Map;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/beizi/fusion/da;->i:Ljava/util/Map;

    .line 64
    .line 65
    :goto_0
    invoke-static {p1}, Lcom/beizi/fusion/da$d;->i(Lcom/beizi/fusion/da$d;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    const/4 v1, 0x0

    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    new-instance v0, Lcom/beizi/fusion/om;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/beizi/fusion/da$d;->i(Lcom/beizi/fusion/da$d;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-direct {v0, v2}, Lcom/beizi/fusion/om;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lcom/beizi/fusion/da;->f:Lcom/beizi/fusion/om;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    iput-object v1, p0, Lcom/beizi/fusion/da;->f:Lcom/beizi/fusion/om;

    .line 89
    .line 90
    :goto_1
    new-instance v0, Lcom/beizi/fusion/da$b;

    .line 91
    .line 92
    invoke-direct {v0, p1, v1}, Lcom/beizi/fusion/da$b;-><init>(Lcom/beizi/fusion/da$d;Lcom/beizi/fusion/da$a;)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/beizi/fusion/da;->h:Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/render/ScopeVideoView$d;

    .line 96
    .line 97
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/da;->b:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    return v0
.end method

.method public b()Lcom/beizi/fusion/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/da;->e:Lcom/beizi/fusion/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/da;->i:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/da;->c:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/render/ScopeVideoView$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/da;->h:Lcom/beizi/fusion/asnp/adn/ad/ad/nativead/render/view/asnp/render/ScopeVideoView$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Lcom/beizi/fusion/om;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/da;->f:Lcom/beizi/fusion/om;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/da;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/da;->d:J

    .line 2
    .line 3
    return-wide v0
.end method
