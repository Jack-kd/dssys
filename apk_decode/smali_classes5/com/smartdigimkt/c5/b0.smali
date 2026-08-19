.class public abstract Lcom/smartdigimkt/c5/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/smartdigimkt/g5/a;)Lcom/smartdigimkt/q3/a;
    .locals 7

    .line 1
    new-instance v0, Lcom/smartdigimkt/q3/a;

    invoke-direct {v0}, Lcom/smartdigimkt/q3/a;-><init>()V

    .line 2
    iget v1, p0, Lcom/smartdigimkt/g5/a;->k:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 3
    :goto_0
    iput-boolean v4, v0, Lcom/smartdigimkt/q3/a;->v:Z

    .line 4
    iget-object v4, p0, Lcom/smartdigimkt/g5/a;->e:Ljava/lang/String;

    .line 5
    iput-object v4, v0, Lcom/smartdigimkt/q3/a;->a:Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lcom/smartdigimkt/g5/a;->g:Ljava/lang/String;

    .line 7
    iput-object v4, v0, Lcom/smartdigimkt/q3/a;->b:Ljava/lang/String;

    .line 8
    iget v4, p0, Lcom/smartdigimkt/g5/a;->t:I

    .line 9
    iput v4, v0, Lcom/smartdigimkt/q3/a;->g:I

    .line 10
    iput v2, v0, Lcom/smartdigimkt/q3/a;->h:I

    const/4 v4, 0x2

    .line 11
    iput v4, v0, Lcom/smartdigimkt/q3/a;->i:I

    .line 12
    iput v2, v0, Lcom/smartdigimkt/q3/a;->j:I

    .line 13
    iget-object v4, p0, Lcom/smartdigimkt/g5/a;->i:Lcom/smartdigimkt/h5/a;

    if-eqz v4, :cond_1

    .line 14
    iget-wide v5, v4, Lcom/smartdigimkt/h5/a;->a:J

    .line 15
    iput-wide v5, v0, Lcom/smartdigimkt/q3/a;->r:J

    .line 16
    iget-wide v5, v4, Lcom/smartdigimkt/h5/a;->b:J

    .line 17
    iput-wide v5, v0, Lcom/smartdigimkt/q3/a;->s:J

    .line 18
    iget-wide v4, v4, Lcom/smartdigimkt/h5/a;->c:J

    .line 19
    iput-wide v4, v0, Lcom/smartdigimkt/q3/a;->t:J

    :cond_1
    if-ne v1, v3, :cond_2

    .line 20
    iget-object p0, p0, Lcom/smartdigimkt/g5/a;->n:Lcom/smartdigimkt/l3/a;

    if-eqz p0, :cond_3

    .line 21
    iget p0, p0, Lcom/smartdigimkt/l3/a;->b:I

    .line 22
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 23
    iput-object p0, v0, Lcom/smartdigimkt/q3/a;->c:Ljava/lang/String;

    goto :goto_1

    .line 24
    :cond_2
    iget v1, p0, Lcom/smartdigimkt/g5/a;->c:I

    .line 25
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 26
    iput-object v1, v0, Lcom/smartdigimkt/q3/a;->c:Ljava/lang/String;

    .line 27
    iget-object p0, p0, Lcom/smartdigimkt/g5/a;->l:Lcom/smartdigimkt/a5/e;

    .line 28
    invoke-static {v0, p0}, Lcom/smartdigimkt/c5/b0;->a(Lcom/smartdigimkt/q3/a;Lcom/smartdigimkt/a5/e;)V

    .line 29
    :cond_3
    :goto_1
    iput v2, v0, Lcom/smartdigimkt/q3/a;->k:I

    return-object v0
.end method

.method public static a(Lcom/smartdigimkt/q3/a;Lcom/smartdigimkt/a5/e;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 30
    const-string v0, "1"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    iget-object v0, p1, Lcom/smartdigimkt/a5/e;->C:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/smartdigimkt/q3/a;->d:Ljava/lang/String;

    .line 33
    iget v0, p1, Lcom/smartdigimkt/a5/e;->m:I

    .line 34
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/smartdigimkt/q3/a;->c:Ljava/lang/String;

    .line 36
    iget-object p1, p1, Lcom/smartdigimkt/a5/e;->x:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/smartdigimkt/q3/a;->l:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/smartdigimkt/q3/a;->l:Lorg/json/JSONObject;

    :cond_0
    return-void
.end method
