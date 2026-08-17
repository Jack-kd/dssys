.class public abstract LL1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL1/j;


# static fields
.field public static final d:LR1/c;


# instance fields
.field public final b:J

.field public final c:LL1/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LL1/b;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LL1/b;->d:LR1/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(LL1/k;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LL1/b;->c:LL1/k;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LL1/b;->b:J

    return-void
.end method

.method public constructor <init>(LL1/k;J)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, LL1/b;->c:LL1/k;

    .line 6
    iput-wide p2, p0, LL1/b;->b:J

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, LL1/b;->d:LR1/c;

    .line 2
    .line 3
    const-string v1, "onIdleExpired {}ms {} {}"

    .line 4
    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, LL1/b;->c:LL1/k;

    .line 10
    .line 11
    filled-new-array {p1, p0, p2}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {v0, v1, p1}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, LL1/b;->c:LL1/k;

    .line 19
    .line 20
    invoke-interface {p1}, LL1/k;->s()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, LL1/b;->c:LL1/k;

    .line 27
    .line 28
    invoke-interface {p1}, LL1/k;->o()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, LL1/b;->c:LL1/k;

    .line 36
    .line 37
    invoke-interface {p1}, LL1/k;->j()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catch_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    iget-object p1, p0, LL1/b;->c:LL1/k;

    .line 44
    .line 45
    invoke-interface {p1}, LL1/k;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :goto_1
    sget-object p2, LL1/b;->d:LR1/c;

    .line 50
    .line 51
    invoke-interface {p2, p1}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    :try_start_1
    iget-object p1, p0, LL1/b;->c:LL1/k;

    .line 55
    .line 56
    invoke-interface {p1}, LL1/k;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :catch_1
    move-exception p1

    .line 61
    sget-object p2, LL1/b;->d:LR1/c;

    .line 62
    .line 63
    invoke-interface {p2, p1}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    :goto_2
    return-void
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, LL1/b;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public e()LL1/k;
    .locals 1

    .line 1
    iget-object v0, p0, LL1/b;->c:LL1/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "%s@%x"

    .line 22
    .line 23
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
