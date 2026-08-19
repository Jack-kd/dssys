.class public Lcom/umeng/analytics/pro/dr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Z

.field public final b:B

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method public constructor <init>(B)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/pro/dr;-><init>(BZ)V

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-byte p1, p0, Lcom/umeng/analytics/pro/dr;->b:B

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/umeng/analytics/pro/dr;->a:Z

    .line 10
    iput-object p2, p0, Lcom/umeng/analytics/pro/dr;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/umeng/analytics/pro/dr;->d:Z

    return-void
.end method

.method public constructor <init>(BZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-byte p1, p0, Lcom/umeng/analytics/pro/dr;->b:B

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/umeng/analytics/pro/dr;->a:Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/umeng/analytics/pro/dr;->c:Ljava/lang/String;

    .line 5
    iput-boolean p2, p0, Lcom/umeng/analytics/pro/dr;->d:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/umeng/analytics/pro/dr;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/dr;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/umeng/analytics/pro/dr;->b:B

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/umeng/analytics/pro/dr;->b:B

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    const/16 v1, 0xd

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/16 v1, 0xe

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/umeng/analytics/pro/dr;->d:Z

    .line 2
    .line 3
    return v0
.end method
