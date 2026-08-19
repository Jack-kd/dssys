.class public final Lcom/smartdigimkt/i5/n;
.super Lcom/smartdigimkt/g5/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartdigimkt/g5/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final b(Lcom/smartdigimkt/g5/a;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/smartdigimkt/g5/a;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p1, Lcom/smartdigimkt/g5/a;->i:Lcom/smartdigimkt/h5/a;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-wide v2, v0, Lcom/smartdigimkt/h5/a;->a:J

    .line 14
    .line 15
    iget-wide v4, v0, Lcom/smartdigimkt/h5/a;->c:J

    .line 16
    .line 17
    sub-long/2addr v4, v2

    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long v0, v4, v2

    .line 21
    .line 22
    if-gtz v0, :cond_1

    .line 23
    .line 24
    move-wide v4, v2

    .line 25
    :cond_1
    iget-object v0, p1, Lcom/smartdigimkt/g5/a;->l:Lcom/smartdigimkt/a5/e;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-wide v2, v0, Lcom/smartdigimkt/a5/e;->k:J

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const-wide/32 v2, 0xea60

    .line 33
    .line 34
    .line 35
    :goto_0
    new-instance v0, Lcom/smartdigimkt/i5/m;

    .line 36
    .line 37
    invoke-direct {v0, p0, p1}, Lcom/smartdigimkt/i5/m;-><init>(Lcom/smartdigimkt/i5/n;Lcom/smartdigimkt/g5/a;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/smartdigimkt/x3/g;->a()Lcom/smartdigimkt/x3/g;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    sub-long/2addr v2, v4

    .line 45
    iget-object v4, v6, Lcom/smartdigimkt/x3/g;->a:Lcom/smartdigimkt/x3/f;

    .line 46
    .line 47
    invoke-virtual {v4, v0, v2, v3}, Lcom/smartdigimkt/x3/f;->a(Lcom/smartdigimkt/x3/b;J)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p1, Lcom/smartdigimkt/g5/a;->j:Lcom/smartdigimkt/x3/b;

    .line 51
    .line 52
    :cond_3
    return v1
.end method
