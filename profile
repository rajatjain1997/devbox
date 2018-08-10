if [ ! -d "/spare/bin" ]; then
  mkdir -p /spare/bin
fi

if [ ! -d "/spare/packages/miniconda3" ]; then
  echo "conda not found! Installing..."
  wget "https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh" | bash
fi

. /spare/packages/miniconda3/etc/profile.d/conda.sh

export PATH="/spare/bin:$PATH"