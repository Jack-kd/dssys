.class public Lcom/octopus/ad/internal/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/octopus/ad/internal/a/i;JLcom/octopus/ad/internal/a/h;)Lcom/octopus/ad/internal/a/g;
    .locals 2

    .line 1
    sget-object v0, Lcom/octopus/ad/internal/a/i;->b:Lcom/octopus/ad/internal/a/i;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    new-instance p0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/octopus/ad/internal/a/i;->values()[Lcom/octopus/ad/internal/a/i;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {p0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/octopus/ad/internal/a/i;->a:Lcom/octopus/ad/internal/a/i;

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lcom/octopus/ad/internal/a/i;

    .line 34
    .line 35
    :cond_0
    sget-object v0, Lcom/octopus/ad/internal/a/a$1;->a:[I

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    aget p0, v0, p0

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    if-eq p0, v0, :cond_4

    .line 45
    .line 46
    const/4 v0, 0x2

    .line 47
    if-eq p0, v0, :cond_3

    .line 48
    .line 49
    const/4 v0, 0x3

    .line 50
    if-eq p0, v0, :cond_2

    .line 51
    .line 52
    const/4 v0, 0x4

    .line 53
    if-eq p0, v0, :cond_1

    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    return-object p0

    .line 57
    :cond_1
    new-instance p0, Lcom/octopus/ad/internal/a/f;

    .line 58
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/octopus/ad/internal/a/f;-><init>(JLcom/octopus/ad/internal/a/h;)V

    .line 60
    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_2
    new-instance p0, Lcom/octopus/ad/internal/a/d;

    .line 64
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/octopus/ad/internal/a/d;-><init>(JLcom/octopus/ad/internal/a/h;)V

    .line 66
    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_3
    new-instance p0, Lcom/octopus/ad/internal/a/e;

    .line 70
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/octopus/ad/internal/a/e;-><init>(JLcom/octopus/ad/internal/a/h;)V

    .line 72
    .line 73
    .line 74
    return-object p0

    .line 75
    :cond_4
    new-instance p0, Lcom/octopus/ad/internal/a/c;

    .line 76
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/octopus/ad/internal/a/c;-><init>(J)V

    .line 78
    .line 79
    .line 80
    return-object p0
.end method
