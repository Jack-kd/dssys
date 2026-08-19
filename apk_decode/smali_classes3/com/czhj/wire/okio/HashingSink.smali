.class public final Lcom/czhj/wire/okio/HashingSink;
.super Lcom/czhj/wire/okio/ForwardingSink;


# instance fields
.field private final a:Ljava/security/MessageDigest;

.field private final b:Ljavax/crypto/Mac;


# direct methods
.method private constructor <init>(Lcom/czhj/wire/okio/Sink;Lcom/czhj/wire/okio/ByteString;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/czhj/wire/okio/ForwardingSink;-><init>(Lcom/czhj/wire/okio/Sink;)V

    :try_start_0
    invoke-static {p3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    iput-object p1, p0, Lcom/czhj/wire/okio/HashingSink;->b:Ljavax/crypto/Mac;

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lcom/czhj/wire/okio/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-direct {v0, p2, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/czhj/wire/okio/HashingSink;->a:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private constructor <init>(Lcom/czhj/wire/okio/Sink;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/czhj/wire/okio/ForwardingSink;-><init>(Lcom/czhj/wire/okio/Sink;)V

    :try_start_0
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/czhj/wire/okio/HashingSink;->a:Ljava/security/MessageDigest;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/czhj/wire/okio/HashingSink;->b:Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public static hmacSha1(Lcom/czhj/wire/okio/Sink;Lcom/czhj/wire/okio/ByteString;)Lcom/czhj/wire/okio/HashingSink;
    .locals 2

    new-instance v0, Lcom/czhj/wire/okio/HashingSink;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p0, p1, v1}, Lcom/czhj/wire/okio/HashingSink;-><init>(Lcom/czhj/wire/okio/Sink;Lcom/czhj/wire/okio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha256(Lcom/czhj/wire/okio/Sink;Lcom/czhj/wire/okio/ByteString;)Lcom/czhj/wire/okio/HashingSink;
    .locals 2

    new-instance v0, Lcom/czhj/wire/okio/HashingSink;

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p0, p1, v1}, Lcom/czhj/wire/okio/HashingSink;-><init>(Lcom/czhj/wire/okio/Sink;Lcom/czhj/wire/okio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha512(Lcom/czhj/wire/okio/Sink;Lcom/czhj/wire/okio/ByteString;)Lcom/czhj/wire/okio/HashingSink;
    .locals 2

    new-instance v0, Lcom/czhj/wire/okio/HashingSink;

    const-string v1, "HmacSHA512"

    invoke-direct {v0, p0, p1, v1}, Lcom/czhj/wire/okio/HashingSink;-><init>(Lcom/czhj/wire/okio/Sink;Lcom/czhj/wire/okio/ByteString;Ljava/lang/String;)V

    return-object v0
.end method

.method public static md5(Lcom/czhj/wire/okio/Sink;)Lcom/czhj/wire/okio/HashingSink;
    .locals 2

    new-instance v0, Lcom/czhj/wire/okio/HashingSink;

    const-string v1, "MD5"

    invoke-direct {v0, p0, v1}, Lcom/czhj/wire/okio/HashingSink;-><init>(Lcom/czhj/wire/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha1(Lcom/czhj/wire/okio/Sink;)Lcom/czhj/wire/okio/HashingSink;
    .locals 2

    new-instance v0, Lcom/czhj/wire/okio/HashingSink;

    const-string v1, "SHA-1"

    invoke-direct {v0, p0, v1}, Lcom/czhj/wire/okio/HashingSink;-><init>(Lcom/czhj/wire/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha256(Lcom/czhj/wire/okio/Sink;)Lcom/czhj/wire/okio/HashingSink;
    .locals 2

    new-instance v0, Lcom/czhj/wire/okio/HashingSink;

    const-string v1, "SHA-256"

    invoke-direct {v0, p0, v1}, Lcom/czhj/wire/okio/HashingSink;-><init>(Lcom/czhj/wire/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sha512(Lcom/czhj/wire/okio/Sink;)Lcom/czhj/wire/okio/HashingSink;
    .locals 2

    new-instance v0, Lcom/czhj/wire/okio/HashingSink;

    const-string v1, "SHA-512"

    invoke-direct {v0, p0, v1}, Lcom/czhj/wire/okio/HashingSink;-><init>(Lcom/czhj/wire/okio/Sink;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final hash()Lcom/czhj/wire/okio/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/czhj/wire/okio/HashingSink;->a:Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/czhj/wire/okio/HashingSink;->b:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/czhj/wire/okio/ByteString;->of([B)Lcom/czhj/wire/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/czhj/wire/okio/Buffer;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p1, Lcom/czhj/wire/okio/Buffer;->c:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/czhj/wire/okio/Util;->checkOffsetAndCount(JJJ)V

    iget-object p2, p1, Lcom/czhj/wire/okio/Buffer;->b:Lcom/czhj/wire/okio/Segment;

    const-wide/16 v0, 0x0

    :goto_0
    cmp-long p3, v0, v4

    if-gez p3, :cond_1

    sub-long v2, v4, v0

    iget p3, p2, Lcom/czhj/wire/okio/Segment;->e:I

    iget v6, p2, Lcom/czhj/wire/okio/Segment;->d:I

    sub-int/2addr p3, v6

    int-to-long v6, p3

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    iget-object v2, p0, Lcom/czhj/wire/okio/HashingSink;->a:Ljava/security/MessageDigest;

    if-eqz v2, :cond_0

    iget-object v3, p2, Lcom/czhj/wire/okio/Segment;->c:[B

    iget v6, p2, Lcom/czhj/wire/okio/Segment;->d:I

    invoke-virtual {v2, v3, v6, p3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/czhj/wire/okio/HashingSink;->b:Ljavax/crypto/Mac;

    iget-object v3, p2, Lcom/czhj/wire/okio/Segment;->c:[B

    iget v6, p2, Lcom/czhj/wire/okio/Segment;->d:I

    invoke-virtual {v2, v3, v6, p3}, Ljavax/crypto/Mac;->update([BII)V

    :goto_1
    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-object p2, p2, Lcom/czhj/wire/okio/Segment;->h:Lcom/czhj/wire/okio/Segment;

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, v4, v5}, Lcom/czhj/wire/okio/ForwardingSink;->write(Lcom/czhj/wire/okio/Buffer;J)V

    return-void
.end method
