.class public final Lcom/ubix/ssp/ad/e/y/c/c;
.super Ljava/lang/Object;


# static fields
.field protected static final a:Ljava/nio/charset/Charset;

.field protected static final b:Ljava/nio/charset/Charset;

.field public static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/ubix/ssp/ad/e/y/c/c;->a:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/ubix/ssp/ad/e/y/c/c;->b:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/e/y/c/c;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Map;III)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;III)I"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/y/c/b;->g(I)I

    move-result p1

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, p2, v2}, Lcom/ubix/ssp/ad/e/y/c/b;->a(IILjava/lang/Object;)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v3, p3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(IILjava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    add-int v1, p1, v2

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/y/c/b;->d(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "keys and values in maps cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v0
.end method

.method private static a(I)Ljava/lang/Object;
    .locals 3

    .line 2
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a primitive type."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object p0, Lcom/ubix/ssp/ad/e/y/c/h;->h:[B

    return-object p0

    :pswitch_2
    const-string p0, ""

    return-object p0

    :pswitch_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_4
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_6
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_7
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static final a(Lcom/ubix/ssp/ad/e/y/c/a;Ljava/util/Map;Lcom/ubix/ssp/ad/e/y/c/e$c;IILjava/lang/Object;II)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ubix/ssp/ad/e/y/c/a;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/ubix/ssp/ad/e/y/c/e$c;",
            "IITV;II)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3
    invoke-interface {p2, p1}, Lcom/ubix/ssp/ad/e/y/c/e$c;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->p()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/ubix/ssp/ad/e/y/c/a;->d(I)I

    move-result p2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/y/c/a;->w()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-ne v1, p6, :cond_2

    invoke-virtual {p0, p3}, Lcom/ubix/ssp/ad/e/y/c/a;->e(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-ne v1, p7, :cond_4

    const/16 v1, 0xb

    if-ne p4, v1, :cond_3

    move-object v1, p5

    check-cast v1, Lcom/ubix/ssp/ad/e/y/c/f;

    invoke-virtual {p0, v1}, Lcom/ubix/ssp/ad/e/y/c/a;->a(Lcom/ubix/ssp/ad/e/y/c/f;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p4}, Lcom/ubix/ssp/ad/e/y/c/a;->e(I)Ljava/lang/Object;

    move-result-object p5

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Lcom/ubix/ssp/ad/e/y/c/a;->h(I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    const/4 p6, 0x0

    invoke-virtual {p0, p6}, Lcom/ubix/ssp/ad/e/y/c/a;->a(I)V

    invoke-virtual {p0, p2}, Lcom/ubix/ssp/ad/e/y/c/a;->c(I)V

    if-nez v0, :cond_5

    invoke-static {p3}, Lcom/ubix/ssp/ad/e/y/c/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    :cond_5
    if-nez p5, :cond_6

    invoke-static {p4}, Lcom/ubix/ssp/ad/e/y/c/c;->a(I)Ljava/lang/Object;

    move-result-object p5

    :cond_6
    invoke-interface {p1, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public static a(Lcom/ubix/ssp/ad/e/y/c/b;Ljava/util/Map;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ubix/ssp/ad/e/y/c/b;",
            "Ljava/util/Map<",
            "TK;TV;>;III)V"
        }
    .end annotation

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v2, p3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->a(IILjava/lang/Object;)I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v4, p4, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->a(IILjava/lang/Object;)I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p0, p2, v4}, Lcom/ubix/ssp/ad/e/y/c/b;->l(II)V

    invoke-virtual {p0, v3}, Lcom/ubix/ssp/ad/e/y/c/b;->o(I)V

    invoke-virtual {p0, v2, p3, v1}, Lcom/ubix/ssp/ad/e/y/c/b;->b(IILjava/lang/Object;)V

    invoke-virtual {p0, v4, p4, v0}, Lcom/ubix/ssp/ad/e/y/c/b;->b(IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "keys and values in maps cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method
