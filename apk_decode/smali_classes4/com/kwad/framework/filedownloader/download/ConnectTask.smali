.class public final Lcom/kwad/framework/filedownloader/download/ConnectTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/framework/filedownloader/download/ConnectTask$a;,
        Lcom/kwad/framework/filedownloader/download/ConnectTask$Reconnect;
    }
.end annotation


# instance fields
.field final aAO:I

.field final aAP:Lcom/kwad/framework/filedownloader/d/b;

.field private aAQ:Lcom/kwad/framework/filedownloader/download/a;

.field private aAR:Ljava/lang/String;

.field private aAS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private aAT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/kwad/framework/filedownloader/download/a;ILjava/lang/String;Ljava/lang/String;Lcom/kwad/framework/filedownloader/d/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Lcom/kwad/framework/filedownloader/download/ConnectTask;->aAO:I

    .line 4
    iput-object p3, p0, Lcom/kwad/framework/filedownloader/download/ConnectTask;->url:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/kwad/framework/filedownloader/download/ConnectTask;->aAR:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/kwad/framework/filedownloader/download/ConnectTask;->aAP:Lcom/kwad/framework/filedownloader/d/b;

    .line 7
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/download/ConnectTask;->aAQ:Lcom/kwad/framework/filedownloader/download/a;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kwad/framework/filedownloader/download/a;ILjava/lang/String;Ljava/lang/String;Lcom/kwad/framework/filedownloader/d/b;B)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/kwad/framework/filedownloader/download/ConnectTask;-><init>(Lcom/kwad/framework/filedownloader/download/a;ILjava/lang/String;Ljava/lang/String;Lcom/kwad/framework/filedownloader/d/b;)V

    return-void
.end method

.method private a(Lcom/kwad/framework/filedownloader/a/b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/ConnectTask;->aAP:Lcom/kwad/framework/filedownloader/d/b;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/d/b;->CW()Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    sget-boolean v1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget v1, p0, Lcom/kwad/framework/filedownloader/download/ConnectTask;->aAO:I

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "%d add outside header: %s"

    .line 26
    .line 27
    invoke-static {p0, v2, v1}, Lcom/kwad/framework/filedownloader/f/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/util/Map$Entry;

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ljava/lang/String;

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Ljava/util/List;

    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_1

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Ljava/lang/String;

    .line 79
    .line 80
    invoke-interface {p1, v2, v3}, Lcom/kwad/framework/filedownloader/a/b;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    return-void
.end method

.method private b(Lcom/kwad/framework/filedownloader/a/b;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/ConnectTask;->aAR:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "If-Match"

    .line 10
    .line 11
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/ConnectTask;->aAR:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {p1, v0, v1}, Lcom/kwad/framework/filedownloader/a/b;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/ConnectTask;->aAQ:Lcom/kwad/framework/filedownloader/download/a;

    .line 17
    .line 18
    iget-wide v1, v0, Lcom/kwad/framework/filedownloader/download/a;->aAY:J

    .line 19
    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    cmp-long v1, v1, v3

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    iget-wide v0, v0, Lcom/kwad/framework/filedownloader/download/a;->aAX:J

    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "bytes=%d-"

    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-wide v0, v0, Lcom/kwad/framework/filedownloader/download/a;->aAX:J

    .line 44
    .line 45
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/ConnectTask;->aAQ:Lcom/kwad/framework/filedownloader/download/a;

    .line 50
    .line 51
    iget-wide v1, v1, Lcom/kwad/framework/filedownloader/download/a;->aAY:J

    .line 52
    .line 53
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "bytes=%d-%d"

    .line 62
    .line 63
    invoke-static {v1, v0}, Lcom/kwad/framework/filedownloader/f/f;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :goto_0
    const-string v1, "Range"

    .line 68
    .line 69
    invoke-interface {p1, v1, v0}, Lcom/kwad/framework/filedownloader/a/b;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method private c(Lcom/kwad/framework/filedownloader/a/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/ConnectTask;->aAP:Lcom/kwad/framework/filedownloader/d/b;

    .line 2
    .line 3
    const-string v1, "User-Agent"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/d/b;->CW()Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    :goto_0
    invoke-static {}, Lcom/kwad/framework/filedownloader/f/f;->DF()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {p1, v1, v0}, Lcom/kwad/framework/filedownloader/a/b;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final BV()Lcom/kwad/framework/filedownloader/a/b;
    .locals 3

    .line 1
    invoke-static {}, Lcom/kwad/framework/filedownloader/download/b;->Ca()Lcom/kwad/framework/filedownloader/download/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/download/ConnectTask;->url:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/kwad/framework/filedownloader/download/b;->ca(Ljava/lang/String;)Lcom/kwad/framework/filedownloader/a/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0, v0}, Lcom/kwad/framework/filedownloader/download/ConnectTask;->a(Lcom/kwad/framework/filedownloader/a/b;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/kwad/framework/filedownloader/download/ConnectTask;->b(Lcom/kwad/framework/filedownloader/a/b;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/kwad/framework/filedownloader/download/ConnectTask;->c(Lcom/kwad/framework/filedownloader/a/b;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a/b;->BO()Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, p0, Lcom/kwad/framework/filedownloader/download/ConnectTask;->aAS:Ljava/util/Map;

    .line 25
    .line 26
    sget-boolean v1, Lcom/kwad/framework/filedownloader/f/d;->aDr:Z

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget v1, p0, Lcom/kwad/framework/filedownloader/download/ConnectTask;->aAO:I

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/download/ConnectTask;->aAS:Ljava/util/Map;

    .line 37
    .line 38
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "%s request header %s"

    .line 43
    .line 44
    invoke-static {p0, v2, v1}, Lcom/kwad/framework/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/a/b;->execute()V

    .line 48
    .line 49
    .line 50
    new-instance v1, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lcom/kwad/framework/filedownloader/download/ConnectTask;->aAT:Ljava/util/List;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/download/ConnectTask;->aAS:Ljava/util/Map;

    .line 58
    .line 59
    invoke-static {v2, v0, v1}, Lcom/kwad/framework/filedownloader/a/d;->a(Ljava/util/Map;Lcom/kwad/framework/filedownloader/a/b;Ljava/util/List;)Lcom/kwad/framework/filedownloader/a/b;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method

.method public final BW()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/ConnectTask;->aAQ:Lcom/kwad/framework/filedownloader/download/a;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/kwad/framework/filedownloader/download/a;->aAX:J

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public final BX()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/ConnectTask;->aAT:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/ConnectTask;->aAT:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return-object v0
.end method

.method public final BY()Lcom/kwad/framework/filedownloader/download/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/ConnectTask;->aAQ:Lcom/kwad/framework/filedownloader/download/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRequestHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/download/ConnectTask;->aAS:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method
