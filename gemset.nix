{
  addressable = {
    dependencies = ["public_suffix"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0cl2qpvwiffym62z991ynks7imsm87qmgxf0yfsmlwzkgi9qcaa6";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.8.7";
  };
  afm = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "06kj9hgd0z8pj27bxp2diwqh6fv7qhwwm17z64rhdc4sfn76jgn8";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.2.2";
  };
  Ascii85 = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1c62cx96r0v265mywnlik43qx0wf6bjbzl54qa47x6dzjg861mvk";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.1.1";
  };
  asciidoctor = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1wyxgwmnz9bw377r3lba26b090hbsq9qnbw8575a1prpy83qh82j";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.0.23";
  };
  asciidoctor-bibtex = {
    dependencies = ["asciidoctor" "bibtex-ruby" "citeproc-ruby" "csl-styles" "latex-decode"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "16l7s926h6cjzy4y582sf3x32l4w10klmdnphxi7p4g6d8vhb61y";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.9.0";
  };
  asciidoctor-chart = {
    dependencies = ["asciidoctor" "tilt"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1jpj8wag9m1xb7q0acp9gmw1pvkwngn48nh0byjc7zjp3crdqh54";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.0.0";
  };
  asciidoctor-diagram = {
    dependencies = ["asciidoctor" "asciidoctor-diagram-ditaamini" "asciidoctor-diagram-plantuml" "rexml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1214scxm36k409gfy3wilfqx3akrm52r530zmra6cmmf6d22c5q4";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.3.1";
  };
  asciidoctor-diagram-batik = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0220xqxmkmimxmhsqhlbr0hslijvnhzdds3s6h6fxbxqrrmm0jrl";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.17";
  };
  asciidoctor-diagram-ditaamini = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "13h65bfbq7hc7z3kqn0m28w9c6ap7fikpjcvsdga6jg01slb4c56";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.0.3";
  };
  asciidoctor-diagram-plantuml = {
    dependencies = ["asciidoctor-diagram-batik"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ppl5nsq40x11731ciahi89k5yvszlm12pml1pqaj0lwbi7ww6x0";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.2024.5";
  };
  asciidoctor-epub3 = {
    dependencies = ["asciidoctor" "gepub" "mime-types" "sass"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1yn2nhr7fr5rx7fn0nhw44gf7iampiy53bw59agpfl7h2dyazjll";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.1.3";
  };
  asciidoctor-html5s = {
    dependencies = ["asciidoctor" "thread_safe"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1zfbfcqyrsk8bnd526ang3b4j3m5pbns7x3fdxarrm8vv1qplss1";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.5.1";
  };
  asciidoctor-mathematical = {
    dependencies = ["asciidoctor" "asciimath" "mathematical"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1lxfq7qn3ql642pva6jh3h1abm9j9daxg5icfn1h73k6cjsmcisp";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.3.5";
  };
  asciidoctor-multipage = {
    dependencies = ["asciidoctor"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1hjqqiibqrmx0147m8b372s57rmhixmpxgv4kwdpnkqbkqgykh7i";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.0.19";
  };
  asciidoctor-pdf = {
    dependencies = ["asciidoctor" "concurrent-ruby" "matrix" "prawn" "prawn-icon" "prawn-svg" "prawn-table" "prawn-templates" "treetop" "ttfunk"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0g8fm8d6fgwd5by7wbksg3y2wq53hzb2n8p9cvi73rdkqsiz4a3h";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.3.18";
  };
  asciidoctor-reducer = {
    dependencies = ["asciidoctor"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1fbrk97mdn26zk118dav2ckyiw6kgrlbkkhdcasawsl42hj16slw";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.0.6";
  };
  asciidoctor-revealjs = {
    dependencies = ["asciidoctor"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0jgazcfzn577xlichfj0rvci0fayp63xcng11ss9mmwqgk48ri53";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "5.1.0";
  };
  asciimath = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ny2qql3lgh7gx54psji2lm4mmbwyiwy00a17w26rjyh6cy55491";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.0.5";
  };
  bibtex-ruby = {
    dependencies = ["latex-decode" "racc"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ggx2j1gi46f1a6p45l1abk3nryfg1pj0cdlyrnilnqqpr1cfc96";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "6.1.0";
  };
  citeproc = {
    dependencies = ["namae"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "13vl5sjmksk5a8kjcqnjxh7kn9gn1n4f9p1rvqfgsfhs54p0m6l2";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.0.10";
  };
  citeproc-ruby = {
    dependencies = ["citeproc" "csl"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0a8ahyhhmdinl4kcyv51r74ipnclmfyz4zjv366dns8v49n5vkk3";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.1.14";
  };
  concurrent-ruby = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0chwfdq2a6kbj6xz9l6zrdfnyghnh32si82la1dnpa5h75ir5anl";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.3.4";
  };
  csl = {
    dependencies = ["namae" "rexml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0n8iqmzvvqy2b1wfr4c7yj28x4z3zgm36628y8ybl49dgnmjycrk";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.6.0";
  };
  csl-styles = {
    dependencies = ["csl"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0l29qlk7i74088fpba5iqhhgiqkj7glcmc42nbmvgqysx577nag8";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.0.1.11";
  };
  css_parser = {
    dependencies = ["addressable"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1rhqn05w27w2mjrf0a6ppb4fxpxbfvyhwgdxa8z886jr4qnhywzb";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.17.1";
  };
  ffi = {
    groups = ["default"];
    platforms = [];
    source = null;
    targets = [{
      remotes = ["https://rubygems.org"];
      sha256 = "029i2b8plhcdfk8s9agachpy3sxszvd6cyvns8i0m1bs7m5vh6pk";
      target = "aarch64-linux-musl";
      targetCPU = "aarch64";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "04hdrlzyri00lgwi4rh8vzy8z8x789p5gc45sk344ib1fr78g730";
      target = "arm64-darwin";
      targetCPU = "arm64";
      targetOS = "darwin";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "0msqfinz820zbzqwdrr0hzwfdqazwgyssgpi08q2d10wf3s5nfxf";
      target = "arm-linux-gnu";
      targetCPU = "arm";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "0szml3n6ql6wzl5fq2rcl1w9iksz4zb68p7cbbwkwc5kkp34ikgx";
      target = "x86_64-darwin";
      targetCPU = "x86_64";
      targetOS = "darwin";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "0xz8jnrvsg0yh4ybg6r7l2y62sr3qir5nhwaixk1dpgqxng2jwv5";
      target = "x86_64-linux-musl";
      targetCPU = "x86_64";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "1621lgx1isrwjj4j27lvlxjfd6v3pnq2ahvhn2y6pp8rb6fya58h";
      target = "x86_64-linux-gnu";
      targetCPU = "x86_64";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "1df86fkfa5mpr1cqp1n0ylm281gxi2sacvfndgnbiqib74j0vf41";
      target = "x86-linux-gnu";
      targetCPU = "x86";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "1hf8k6bwxd1zsp0wa32dl8bs8z4xmab9dgvan7wxp04bj87c25v9";
      target = "x86-linux-musl";
      targetCPU = "x86";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "1hgj2971w112gp4wkciqh57gfrfafmd1252lqwqql0bbksvqz312";
      target = "aarch64-linux-gnu";
      targetCPU = "aarch64";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "1j8gyhbxp3bsz90w8hyvcsd5qqilw6br0r09s8pvdpz22x4ci7bg";
      target = "arm-linux-musl";
      targetCPU = "arm";
      targetOS = "linux";
      type = "gem";
    }];
    version = "1.17.0";
  };
  gepub = {
    dependencies = ["nokogiri" "rubyzip"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "08fny807zd4700f263ckc76bladjipsniyk3clv8a7x76x3fqshx";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.0.15";
  };
  hashery = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0qj8815bf7q6q7llm5rzdz279gzmpqmqqicxnzv066a020iwqffj";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.1.2";
  };
  i18n = {
    dependencies = ["concurrent-ruby"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ffix518y7976qih9k1lgnc17i3v6yrlh0a3mckpxdb4wc2vrp16";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.14.5";
  };
  latex-decode = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1y5xn3zwghpqr6lvs4s0mn5knms8zw3zk7jb58zkkiagb386nq72";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.4.0";
  };
  mathematical = {
    dependencies = ["ruby-enum"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1svsfs3j9gjm4q02cyaarwgx9v0wckpkrmf42vj4a7v1pkv4dspx";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.6.18";
  };
  matrix = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1h2cgkpzkh3dd0flnnwfq6f3nl2b1zff9lvqz8xs853ssv5kq23i";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.4.2";
  };
  mime-types = {
    dependencies = ["mime-types-data"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1r64z0m5zrn4k37wabfnv43wa6yivgdfk6cf2rpmmirlz889yaf1";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.5.2";
  };
  mime-types-data = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0vzvh906sk9zqfd4bvpjjgw856i769d2abjp3cibh5w73r9g70zj";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.2024.0806";
  };
  namae = {
    dependencies = ["racc"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "17fmp6p74ai2w984xayv3kz2nh44w81hqqvn4cfrim3g115wwh9m";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.2.0";
  };
  nokogiri = {
    dependencies = ["racc"];
    groups = ["default"];
    platforms = [];
    source = null;
    targets = [{
      remotes = ["https://rubygems.org"];
      sha256 = "0jypl5fjx0jzbdlvmzr6fvwjra335hizxh1ipq9rbdb5y4sqsxvq";
      target = "aarch64-linux";
      targetCPU = "aarch64";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "0r1nlbya3s6fbvq9k6z82rpkww6bpbw18arhk2mrzklrxz0z3nyx";
      target = "x86-linux";
      targetCPU = "x86";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "1aiz5hg2pfjnk756f2zd0723m3wq30gkmishmc76jwn51yw341v3";
      target = "x86_64-darwin";
      targetCPU = "x86_64";
      targetOS = "darwin";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "1b8d91wy4ajaspawq7dp826913jbs80sj6ycb8mv59c8p6hwwv97";
      target = "arm64-darwin";
      targetCPU = "arm64";
      targetOS = "darwin";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "1hrglil725qzyccb2p3cq9k20jwchdsh3cl1p6xkak547agdnk68";
      target = "arm-linux";
      targetCPU = "arm";
      targetOS = "linux";
      type = "gem";
    } {
      remotes = ["https://rubygems.org"];
      sha256 = "1xj0dawahc1jbw0w99dlzvln0d8nf66422y6fzw2m56m863447ly";
      target = "x86_64-linux";
      targetCPU = "x86_64";
      targetOS = "linux";
      type = "gem";
    }];
    version = "1.16.7";
  };
  pdf-core = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1fz0yj4zrlii2j08kaw11j769s373ayz8jrdhxwwjzmm28pqndjg";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.9.0";
  };
  pdf-reader = {
    dependencies = ["Ascii85" "afm" "hashery" "ruby-rc4" "ttfunk"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0n0pp7blk3np3fqsb54l34fsamrww80cp3dhlhskfayg7542mrv1";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.12.0";
  };
  polyglot = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1bqnxwyip623d8pr29rg6m8r0hdg08fpr2yb74f46rn1wgsnxmjr";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.3.5";
  };
  prawn = {
    dependencies = ["pdf-core" "ttfunk"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1g9avv2rprsjisdk137s9ljr05r7ajhm78hxa1vjsv0jyx22f1l2";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.4.0";
  };
  prawn-icon = {
    dependencies = ["prawn"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1xdnjik5zinnkjavmybbh2s52wzcpb8hzaqckiv0mxp0vs0x9j6s";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.0.0";
  };
  prawn-svg = {
    dependencies = ["css_parser" "matrix" "prawn" "rexml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "143sfwadbdrgi57am8ikalryjijdyl82h2sdc1cns3wl6b9pkzxg";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.34.2";
  };
  prawn-table = {
    dependencies = ["prawn"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1nxd6qmxqwl850icp18wjh5k0s3amxcajdrkjyzpfgq0kvilcv9k";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.2.2";
  };
  prawn-templates = {
    dependencies = ["pdf-reader" "prawn"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1w9irn3rllm992c6j7fsx81gg539i7yy8zfddyw7q53hnlys0yhi";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.1.2";
  };
  public_suffix = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0vqcw3iwby3yc6avs1vb3gfd0vcp2v7q310665dvxfswmcf4xm31";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "6.0.1";
  };
  racc = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0byn0c9nkahsl93y9ln5bysq4j31q8xkf2ws42swighxd4lnjzsa";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.8.1";
  };
  rb-fsevent = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1zmf31rnpm8553lqwibvv3kkx0v7majm1f341xbxc0bk5sbhp423";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.11.2";
  };
  rb-inotify = {
    dependencies = ["ffi"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0vmy8xgahixcz6hzwy4zdcyn2y6d6ri8dqv5xccgzc1r292019x0";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.11.1";
  };
  rexml = {
    dependencies = ["strscan"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0lavf9ki8ji8q3gd79b1slbxvbky4pvwb7i9g19lgy3id8kpd4ga";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.3.4";
  };
  rouge = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "072qvvrcqj0yfr3b0j932mlhvn41i38bq37z7z07i3ikagndkqwy";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "4.3.0";
  };
  ruby-enum = {
    dependencies = ["i18n"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1pys90hxylhyg969iw9lz3qai5lblf8xwbdg1g5aj52731a9k83p";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.9.0";
  };
  ruby-rc4 = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "00vci475258mmbvsdqkmqadlwn6gj9m01sp7b5a3zd90knil1k00";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.1.5";
  };
  rubyzip = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0grps9197qyxakbpw02pda59v45lfgbgiyw48i0mq9f2bn9y6mrz";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.3.2";
  };
  sass = {
    dependencies = ["sass-listen"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0p95lhs0jza5l7hqci1isflxakz83xkj97lkvxl919is0lwhv2w0";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.7.4";
  };
  sass-listen = {
    dependencies = ["rb-fsevent" "rb-inotify"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0xw3q46cmahkgyldid5hwyiwacp590zj2vmswlll68ryvmvcp7df";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "4.0.0";
  };
  strscan = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0mamrl7pxacbc79ny5hzmakc9grbjysm3yy6119ppgsg44fsif01";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "3.1.0";
  };
  thread_safe = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0nmhcgq6cgz44srylra07bmaw99f5271l0dpsvl5f75m44l0gmwy";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "0.3.6";
  };
  tilt = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "186nfbcsk0l4l86gvng1fw6jq6p6s7rc0caxr23b3pnbfb20y63v";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "2.0.11";
  };
  treetop = {
    dependencies = ["polyglot"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0adc8qblz8ii668r3rksjx83p675iryh52rvdvysimx2hkbasj7d";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.6.12";
  };
  ttfunk = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15iaxz9iak5643bq2bc0jkbjv8w2zn649lxgvh5wg48q9d4blw13";
      target = "ruby";
      type = "gem";
    };
    targets = [];
    version = "1.7.0";
  };
}