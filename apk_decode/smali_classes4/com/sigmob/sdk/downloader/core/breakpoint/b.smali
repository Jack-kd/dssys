.class public Lcom/sigmob/sdk/downloader/core/breakpoint/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:J

.field private final c:J

.field private final d:J


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "breakpoint_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/b;->a:I

    const-string v0, "start_offset"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-wide/16 v1, 0x0

    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v3, v0

    goto :goto_1

    :cond_1
    move-wide v3, v1

    :goto_1
    iput-wide v3, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/b;->b:J

    const-string v0, "content_length"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v3, v0

    goto :goto_2

    :cond_2
    move-wide v3, v1

    :goto_2
    iput-wide v3, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/b;->c:J

    const-string v0, "current_offset"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    int-to-long v1, p1

    :cond_3
    iput-wide v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/b;->d:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/b;->a:I

    return v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/b;->b:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/b;->c:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/b;->d:J

    return-wide v0
.end method

.method public e()Lcom/sigmob/sdk/downloader/core/breakpoint/a;
    .locals 7

    new-instance v0, Lcom/sigmob/sdk/downloader/core/breakpoint/a;

    iget-wide v1, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/b;->b:J

    iget-wide v3, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/b;->c:J

    iget-wide v5, p0, Lcom/sigmob/sdk/downloader/core/breakpoint/b;->d:J

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/downloader/core/breakpoint/a;-><init>(JJJ)V

    return-object v0
.end method
