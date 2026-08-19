.class final Lms/bz/bd/c/Pgl/pblc$pgla;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lms/bz/bd/c/Pgl/pblc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "pgla"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final hp:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final l:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lms/bz/bd/c/Pgl/pblc$pgla;->hp:Ljava/lang/Object;

    iput-object p2, p0, Lms/bz/bd/c/Pgl/pblc$pgla;->l:Ljava/lang/Object;

    return-void
.end method

.method public static hp(Ljava/nio/ByteBuffer;Ljava/lang/Long;)Lms/bz/bd/c/Pgl/pblc$pgla;
    .locals 1

    .line 2
    new-instance v0, Lms/bz/bd/c/Pgl/pblc$pgla;

    invoke-direct {v0, p0, p1}, Lms/bz/bd/c/Pgl/pblc$pgla;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lms/bz/bd/c/Pgl/pblc$pgla;

    if-eq v3, v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lms/bz/bd/c/Pgl/pblc$pgla;

    iget-object v2, p0, Lms/bz/bd/c/Pgl/pblc$pgla;->hp:Ljava/lang/Object;

    if-nez v2, :cond_3

    iget-object v2, p1, Lms/bz/bd/c/Pgl/pblc$pgla;->hp:Ljava/lang/Object;

    if-eqz v2, :cond_4

    return v1

    :cond_3
    iget-object v3, p1, Lms/bz/bd/c/Pgl/pblc$pgla;->hp:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lms/bz/bd/c/Pgl/pblc$pgla;->l:Ljava/lang/Object;

    iget-object p1, p1, Lms/bz/bd/c/Pgl/pblc$pgla;->l:Ljava/lang/Object;

    if-nez v2, :cond_6

    if-nez p1, :cond_5

    return v0

    :cond_5
    return v1

    :cond_6
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lms/bz/bd/c/Pgl/pblc$pgla;->hp:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lms/bz/bd/c/Pgl/pblc$pgla;->l:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final hp()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lms/bz/bd/c/Pgl/pblc$pgla;->hp:Ljava/lang/Object;

    return-object v0
.end method
